//------------------------------------------------------------------------
//  WAD Reading / Writing
//------------------------------------------------------------------------
//
//  AJ-BSP  Copyright (C) 2001-2018  Andrew Apted
//
//  This program is free software; you can redistribute it and/or
//  modify it under the terms of the GNU General Public License
//  as published by the Free Software Foundation; either version 2
//  of the License, or (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//------------------------------------------------------------------------

#include "bsp_wad.h"

#include <stdarg.h>
#include <string.h>

#include <algorithm>

#include "bsp_local.h"
#include "lib_util.h"
#include "sys_assert.h"
#include "sys_debug.h"
#include "sys_endian.h"
#include "sys_macro.h"

#define AJBSP_DEBUG_WAD 0

namespace ajbsp
{

#if DEBUG_WAD
#define FileMessage DebugPrint
#define LumpWarning DebugPrint
#else
void FileMessage(const char *fmt, ...)
{
    (void)fmt;
}

void LumpWarning(const char *fmt, ...)
{
    (void)fmt;
}
#endif

//------------------------------------------------------------------------
//  LUMP Handling
//------------------------------------------------------------------------

Lump_c::Lump_c(Wad_file *_par, const char *_name, int _start, int _len) : parent(_par), l_start(_start), l_length(_len)
{
    // ensure lump name is uppercase
    name = CStringUpper(_name);
}

Lump_c::Lump_c(Wad_file *_par, const raw_wad_entry_s *entry) : parent(_par)
{
    // handle the entry name, which can lack a terminating NUL
    char buffer[10];
    strncpy(buffer, entry->name, 8);
    buffer[8] = 0;

    name = CStringDup(buffer);

    l_start  = LE_U32(entry->pos);
    l_length = LE_U32(entry->size);

#if DEBUG_WAD
    DebugPrint("new lump '%s' @ %d len:%d\n", name, l_start, l_length);
#endif
}

Lump_c::~Lump_c()
{
    CStringFree(name);
}

void Lump_c::MakeEntry(raw_wad_entry_s *entry)
{
    // do a dance to avoid a compiler warning from strncpy(), *sigh*
    memset(entry->name, 0, 8);
    memcpy(entry->name, name, strlen(name));

    entry->pos  = LE_U32(l_start);
    entry->size = LE_U32(l_length);
}

void Lump_c::Rename(const char *new_name)
{
    CStringFree(name);

    // ensure lump name is uppercase
    name = CStringUpper(new_name);
}

bool Lump_c::Seek(int offset)
{
    SYS_ASSERT(offset >= 0);

    return (fseek(parent->fp, l_start + offset, SEEK_SET) == 0);
}

bool Lump_c::Read(void *data, int len)
{
    SYS_ASSERT(data && len > 0);

    return (fread(data, len, 1, parent->fp) == 1);
}

bool Lump_c::GetLine(char *buffer, size_t buf_size)
{
    int cur_pos = (int)ftell(parent->fp);

    if (cur_pos < 0)
        return false;

    cur_pos -= l_start;

    if (cur_pos >= l_length)
        return false; // EOF

    char *dest     = buffer;
    char *dest_end = buffer + buf_size - 1;

    for (; cur_pos < l_length && dest < dest_end; cur_pos++)
    {
        *dest++ = fgetc(parent->fp);

        if (dest[-1] == '\n')
            break;

        if (ferror(parent->fp))
            return false;

        if (feof(parent->fp))
            break;
    }

    *dest = 0;

    return true; // OK
}

bool Lump_c::Write(const void *data, int len)
{
    SYS_ASSERT(data && len > 0);

    l_length += len;

    return (fwrite(data, len, 1, parent->fp) == 1);
}

void Lump_c::Printf(const char *msg, ...)
{
    static char buffer[OBSIDIAN_MSG_BUF_LEN];

    va_list args;

    va_start(args, msg);
    vsnprintf(buffer, sizeof(buffer), msg, args);
    va_end(args);

    buffer[sizeof(buffer) - 1] = 0;

    Write(buffer, (int)strlen(buffer));
}

bool Lump_c::Finish()
{
    if (l_length == 0)
        l_start = 0;

    return parent->FinishLump(l_length);
}

//------------------------------------------------------------------------
//  WAD Reading Interface
//------------------------------------------------------------------------

Wad_file::Wad_file(const char *_name, char _mode, FILE *_fp)
    : mode(_mode), fp(_fp), kind('P'), total_size(0), directory(), dir_start(0), dir_count(0), levels(), patches(),
      sprites(), flats(), tx_tex(), begun_write(false), insert_point(-1)
{
    filename = CStringDup(_name);
}

Wad_file::~Wad_file()
{
    FileMessage("Closing WAD file: %s\n", filename);

    fclose(fp);

    // free the directory
    for (int k = 0; k < NumLumps(); k++)
        delete directory[k];

    directory.clear();

    CStringFree(filename);
}

Wad_file *Wad_file::Open(const char *filename, char mode)
{
    SYS_ASSERT(mode == 'r' || mode == 'w' || mode == 'a');

    if (mode == 'w')
        return Create(filename, mode);

    FileMessage("Opening WAD file: %s\n", filename);

    FILE *fp = NULL;

retry:
    fp = FileOpen(filename, (mode == 'r' ? "rb" : "r+b"));

    if (!fp)
    {
        // mimic the fopen() semantics
        if (mode == 'a' && errno == ENOENT)
            return Create(filename, mode);

        // if file is read-only, open in 'r' mode instead
        if (mode == 'a' && (errno == EACCES || errno == EROFS))
        {
            FileMessage("Open r/w failed, trying again in read mode...\n");
            mode = 'r';
            goto retry;
        }

        int what = errno;
        FileMessage("Open file failed: %s\n", strerror(what));
        return NULL;
    }

    Wad_file *w = new Wad_file(filename, mode, fp);

    // determine total size (seek to end)
    if (fseek(fp, 0, SEEK_END) != 0)
        FatalError("Error determining WAD size.\n");

    w->total_size = (int)ftell(fp);

#if DEBUG_WAD
    DebugPrint("total_size = %d\n", w->total_size);
#endif

    if (w->total_size < 0)
        FatalError("Error determining WAD size.\n");

    w->ReadDirectory();
    w->DetectLevels();
    w->ProcessNamespaces();

    return w;
}

Wad_file *Wad_file::Create(const char *filename, char mode)
{
    FileMessage("Creating new WAD file: %s\n", filename);

    FILE *fp = FileOpen(filename, "w+b");
    if (!fp)
        return NULL;

    Wad_file *w = new Wad_file(filename, mode, fp);

    // write out base header
    raw_wad_header_t header;

    memset(&header, 0, sizeof(header));
    memcpy(header.ident, "PWAD", 4);

    fwrite(&header, sizeof(header), 1, fp);
    fflush(fp);

    w->total_size = (int)sizeof(header);

    return w;
}

bool Wad_file::Validate(const char *filename)
{
    FILE *fp = FileOpen(filename, "rb");

    if (!fp)
        return false;

    raw_wad_header_t header;

    if (fread(&header, sizeof(header), 1, fp) != 1)
    {
        fclose(fp);
        return false;
    }

    if (!(header.ident[1] == 'W' && header.ident[2] == 'A' && header.ident[3] == 'D'))
    {
        fclose(fp);
        return false;
    }

    fclose(fp);

    return true; // OK
}

static int WhatLevelPart(const char *name)
{
    if (StringCompare(name, "THINGS") == 0)
        return 1;
    if (StringCompare(name, "LINEDEFS") == 0)
        return 2;
    if (StringCompare(name, "SIDEDEFS") == 0)
        return 3;
    if (StringCompare(name, "VERTEXES") == 0)
        return 4;
    if (StringCompare(name, "SECTORS") == 0)
        return 5;

    return 0;
}

static bool IsLevelLump(const char *name)
{
    if (StringCompare(name, "SEGS") == 0)
        return true;
    if (StringCompare(name, "SSECTORS") == 0)
        return true;
    if (StringCompare(name, "NODES") == 0)
        return true;
    if (StringCompare(name, "REJECT") == 0)
        return true;
    if (StringCompare(name, "BLOCKMAP") == 0)
        return true;
    if (StringCompare(name, "BEHAVIOR") == 0)
        return true;
    if (StringCompare(name, "SCRIPTS") == 0)
        return true;

    return WhatLevelPart(name) != 0;
}

static bool IsGLNodeLump(const char *name)
{
    if (StringPrefixCompare(name, "GL_") == 0)
        return true;

    return false;
}

Lump_c *Wad_file::GetLump(int index)
{
    SYS_ASSERT(0 <= index && index < NumLumps());
    SYS_ASSERT(directory[index]);

    return directory[index];
}

Lump_c *Wad_file::FindLump(const char *name)
{
    for (int k = 0; k < NumLumps(); k++)
        if (StringCompare(directory[k]->name, name) == 0)
            return directory[k];

    return NULL; // not found
}

int Wad_file::FindLumpNum(const char *name)
{
    for (int k = 0; k < NumLumps(); k++)
        if (StringCompare(directory[k]->name, name) == 0)
            return k;

    return -1; // not found
}

static constexpr uint8_t MAX_LUMPS_IN_A_LEVEL = 21;

int Wad_file::LevelLookupLump(int lev_num, const char *name)
{
    int start  = LevelHeader(lev_num);
    int finish = LevelLastLump(lev_num);

    for (int k = start + 1; k <= finish; k++)
    {
        SYS_ASSERT(0 <= k && k < NumLumps());

        if (StringCompare(directory[k]->name, name) == 0)
            return k;
    }

    return -1; // not found
}

int Wad_file::LevelFind(const char *name)
{
    for (int k = 0; k < (int)levels.size(); k++)
    {
        int index = levels[k];

        SYS_ASSERT(0 <= index && index < NumLumps());
        SYS_ASSERT(directory[index]);

        if (StringCompare(directory[index]->name, name) == 0)
            return k;
    }

    return -1; // not found
}

int Wad_file::LevelLastLump(int lev_num)
{
    int start = LevelHeader(lev_num);
    int count = 1;

    // UDMF level?
    if (LevelFormat(lev_num) == MAPF_UDMF)
    {
        while (count < MAX_LUMPS_IN_A_LEVEL && start + count < NumLumps())
        {
            if (StringCompare(directory[start + count]->name, "ENDMAP") == 0)
            {
                count++;
                break;
            }

            count++;
        }
    }
    else // standard DOOM or HEXEN format
    {
        while (count < MAX_LUMPS_IN_A_LEVEL && start + count < NumLumps() &&
               (IsLevelLump(directory[start + count]->name) || IsGLNodeLump(directory[start + count]->name)))
        {
            count++;
        }
    }

    return start + count - 1;
}

int Wad_file::LevelFindByNumber(int number)
{
    // sanity check
    if (number <= 0 || number > 99)
        return -1;

    char buffer[10];
    int  index;

    // try MAP## first
    sprintf(buffer, "MAP%02d", number);

    index = LevelFind(buffer);
    if (index >= 0)
        return index;

    // otherwise try E#M#
    sprintf(buffer, "E%dM%d", OBSIDIAN_MAX(1, number / 10), number % 10);

    index = LevelFind(buffer);
    if (index >= 0)
        return index;

    return -1; // not found
}

int Wad_file::LevelFindFirst()
{
    if (levels.size() > 0)
        return 0;
    else
        return -1; // none
}

int Wad_file::LevelHeader(int lev_num)
{
    SYS_ASSERT(0 <= lev_num && lev_num < LevelCount());

    return levels[lev_num];
}

map_format_e Wad_file::LevelFormat(int lev_num)
{
    int start = LevelHeader(lev_num);

    if (start + 2 < (int)NumLumps())
    {
        const char *name = GetLump(start + 1)->Name();

        if (StringCompare(name, "TEXTMAP") == 0)
            return MAPF_UDMF;
    }

    if (start + LL_BEHAVIOR < (int)NumLumps())
    {
        for (int i = LL_REJECT; i <= LL_BEHAVIOR; i++)
        {
            const char *name = GetLump(start + i)->Name();
            if (StringCompare(name, "BEHAVIOR") == 0)
                return MAPF_Hexen;
        }
    }

    return MAPF_Doom;
}

Lump_c *Wad_file::FindLumpInNamespace(const char *name, char group)
{
    int k;

    switch (group)
    {
    case 'P':
        for (k = 0; k < (int)patches.size(); k++)
            if (StringCompare(directory[patches[k]]->name, name) == 0)
                return directory[patches[k]];
        break;

    case 'S':
        for (k = 0; k < (int)sprites.size(); k++)
            if (StringCompare(directory[sprites[k]]->name, name) == 0)
                return directory[sprites[k]];
        break;

    case 'F':
        for (k = 0; k < (int)flats.size(); k++)
            if (StringCompare(directory[flats[k]]->name, name) == 0)
                return directory[flats[k]];
        break;

    default:
        FatalError("FindLumpInNamespace: bad group '%c'\n", group);
    }

    return NULL; // not found!
}

void Wad_file::ReadDirectory()
{
    // WISH: no fatal errors

    rewind(fp);

    raw_wad_header_t header;

    if (fread(&header, sizeof(header), 1, fp) != 1)
        FatalError("Error reading WAD header.\n");

    // WISH: check ident for PWAD or IWAD

    kind = header.ident[0];

    dir_start = LE_S32(header.dir_start);
    dir_count = LE_S32(header.num_entries);

    if (dir_count < 0 || dir_count > 32000)
        FatalError("Bad WAD header, too many entries (%d)\n", dir_count);

    if (fseek(fp, dir_start, SEEK_SET) != 0)
        FatalError("Error seeking to WAD directory.\n");

    for (int i = 0; i < dir_count; i++)
    {
        raw_wad_entry_t entry;

        if (fread(&entry, sizeof(entry), 1, fp) != 1)
            FatalError("Error reading WAD directory.\n");

        Lump_c *lump = new Lump_c(this, &entry);

        // WISH: check if entry is valid

        directory.push_back(lump);
    }
}

void Wad_file::DetectLevels()
{
    // Determine what lumps in the wad are level markers, based on the
    // lumps which follow it.  Store the result in the 'levels' vector.
    // The test here is rather lax, since wads exist with a non-standard
    // ordering of level lumps.

    for (int k = 0; k + 1 < NumLumps(); k++)
    {
        int part_mask  = 0;
        int part_count = 0;

        // check for UDMF levels
        if (StringCompare(directory[k + 1]->name, "TEXTMAP") == 0)
        {
            levels.push_back(k);
#if DEBUG_WAD
            DebugPrint("Detected level : %s (UDMF)\n", directory[k]->name);
#endif
            continue;
        }

        // check whether the next four lumps are level lumps
        for (int i = 1; i <= 4; i++)
        {
            if (k + i >= NumLumps())
                break;

            int part = WhatLevelPart(directory[k + i]->name);

            if (part == 0)
                break;

            // do not allow duplicates
            if (part_mask & (1 << part))
                break;

            part_mask |= (1 << part);
            part_count++;
        }

        if (part_count == 4)
        {
            levels.push_back(k);

#if DEBUG_WAD
            DebugPrint("Detected level : %s\n", directory[k]->name);
#endif
        }
    }

    // sort levels into alphabetical order
    SortLevels();
}

void Wad_file::SortLevels()
{
    std::sort(levels.begin(), levels.end(), level_name_CMP_pred(this));
}

static bool IsDummyMarker(const char *name)
{
    // matches P1_START, F3_END etc...

    if (strlen(name) < 3)
        return false;

    if (!strchr("PSF", ToUpperASCII(name[0])))
        return false;

    if (!isdigit(name[1]))
        return false;

    if (StringCompare(name + 2, "_START") == 0 || StringCompare(name + 2, "_END") == 0)
        return true;

    return false;
}

void Wad_file::ProcessNamespaces()
{
    char active = 0;

    for (int k = 0; k < NumLumps(); k++)
    {
        const char *name = directory[k]->name;

        // skip the sub-namespace markers
        if (IsDummyMarker(name))
            continue;

        if (StringCompare(name, "P_START") == 0 || StringCompare(name, "PP_START") == 0)
        {
            if (active && active != 'P')
                LumpWarning("missing %c_END marker.\n", active);

            active = 'P';
            continue;
        }
        else if (StringCompare(name, "P_END") == 0 || StringCompare(name, "PP_END") == 0)
        {
            if (active != 'P')
                LumpWarning("stray P_END marker found.\n");

            active = 0;
            continue;
        }

        if (StringCompare(name, "S_START") == 0 || StringCompare(name, "SS_START") == 0)
        {
            if (active && active != 'S')
                LumpWarning("missing %c_END marker.\n", active);

            active = 'S';
            continue;
        }
        else if (StringCompare(name, "S_END") == 0 || StringCompare(name, "SS_END") == 0)
        {
            if (active != 'S')
                LumpWarning("stray S_END marker found.\n");

            active = 0;
            continue;
        }

        if (StringCompare(name, "F_START") == 0 || StringCompare(name, "FF_START") == 0)
        {
            if (active && active != 'F')
                LumpWarning("missing %c_END marker.\n", active);

            active = 'F';
            continue;
        }
        else if (StringCompare(name, "F_END") == 0 || StringCompare(name, "FF_END") == 0)
        {
            if (active != 'F')
                LumpWarning("stray F_END marker found.\n");

            active = 0;
            continue;
        }

        if (StringCompare(name, "TX_START") == 0)
        {
            if (active && active != 'T')
                LumpWarning("missing %c_END marker.\n", active);

            active = 'T';
            continue;
        }
        else if (StringCompare(name, "TX_END") == 0)
        {
            if (active != 'T')
                LumpWarning("stray TX_END marker found.\n");

            active = 0;
            continue;
        }

        if (active)
        {
            if (directory[k]->Length() == 0)
            {
                LumpWarning("skipping empty lump %s in %c_START\n", name, active);
                continue;
            }

#if DEBUG_WAD
            DebugPrint("Namespace %c lump : %s\n", active, name);
#endif

            switch (active)
            {
            case 'P':
                patches.push_back(k);
                break;
            case 'S':
                sprites.push_back(k);
                break;
            case 'F':
                flats.push_back(k);
                break;
            case 'T':
                tx_tex.push_back(k);
                break;

            default:
                FatalError("ProcessNamespaces: active = 0x%02x\n", (int)active);
            }
        }
    }

    if (active)
        LumpWarning("Missing %c_END marker (at EOF)\n", active);
}

bool Wad_file::WasExternallyModified()
{
    // this method is an unused stub
    return false;
}

//------------------------------------------------------------------------
//  WAD Writing Interface
//------------------------------------------------------------------------

void Wad_file::BeginWrite()
{
    if (mode == 'r')
        FatalError("Wad_file::BeginWrite() called on read-only file\n");

    if (begun_write)
        FatalError("Wad_file::BeginWrite() called again without EndWrite()\n");

    // put the size into a quantum state
    total_size = 0;

    begun_write = true;
}

void Wad_file::EndWrite()
{
    if (!begun_write)
        FatalError("Wad_file::EndWrite() called without BeginWrite()\n");

    begun_write = false;

    WriteDirectory();

    // reset the insertion point
    insert_point = -1;
}

void Wad_file::RenameLump(int index, const char *new_name)
{
    SYS_ASSERT(begun_write);
    SYS_ASSERT(0 <= index && index < NumLumps());

    Lump_c *lump = directory[index];
    SYS_ASSERT(lump);

    lump->Rename(new_name);
}

void Wad_file::RemoveLumps(int index, int count)
{
    SYS_ASSERT(begun_write);
    SYS_ASSERT(0 <= index && index < NumLumps());
    SYS_ASSERT(directory[index]);

    int i;

    for (i = 0; i < count; i++)
    {
        delete directory[index + i];
    }

    for (i = index; i + count < NumLumps(); i++)
        directory[i] = directory[i + count];

    directory.resize(directory.size() - (size_t)count);

    // fix various arrays containing lump indices
    FixGroup(levels, index, 0, count);
    FixGroup(patches, index, 0, count);
    FixGroup(sprites, index, 0, count);
    FixGroup(flats, index, 0, count);
    FixGroup(tx_tex, index, 0, count);

    // reset the insertion point
    insert_point = -1;
}

void Wad_file::RemoveLevel(int lev_num)
{
    SYS_ASSERT(begun_write);
    SYS_ASSERT(0 <= lev_num && lev_num < LevelCount());

    int start  = LevelHeader(lev_num);
    int finish = LevelLastLump(lev_num);

    // NOTE: FixGroup() will remove the entry in levels[]

    RemoveLumps(start, finish - start + 1);
}

void Wad_file::RemoveGLNodes(int lev_num)
{
    SYS_ASSERT(begun_write);
    SYS_ASSERT(0 <= lev_num && lev_num < LevelCount());

    int start  = LevelHeader(lev_num);
    int finish = LevelLastLump(lev_num);

    start++;

    while (start <= finish && IsLevelLump(directory[start]->name))
    {
        start++;
    }

    int count = 0;

    while (start + count <= finish && IsGLNodeLump(directory[start + count]->name))
    {
        count++;
    }

    if (count > 0)
        RemoveLumps(start, count);
}

void Wad_file::RemoveZNodes(int lev_num)
{
    SYS_ASSERT(begun_write);
    SYS_ASSERT(0 <= lev_num && lev_num < LevelCount());

    short start  = LevelHeader(lev_num);
    short finish = LevelLastLump(lev_num);

    for (; start <= finish; start++)
    {
        if (StringCompare(directory[start]->name, "ZNODES") == 0)
        {
            RemoveLumps(start, 1);
            break;
        }
    }
}

void Wad_file::FixGroup(std::vector<int> &group, int index, int num_added, int num_removed)
{
    bool did_remove = false;

    for (int k = 0; k < (int)group.size(); k++)
    {
        if (group[k] < index)
            continue;

        if (group[k] < index + num_removed)
        {
            group[k]   = -1;
            did_remove = true;
            continue;
        }

        group[k] += num_added;
        group[k] -= num_removed;
    }

    if (did_remove)
    {
        std::vector<int>::iterator ENDP;
        ENDP = std::remove(group.begin(), group.end(), -1);
        group.erase(ENDP, group.end());
    }
}

Lump_c *Wad_file::AddLump(const char *name, int max_size)
{
    SYS_ASSERT(begun_write);

    begun_max_size = max_size;

    int start = PositionForWrite(max_size);

    Lump_c *lump = new Lump_c(this, name, start, 0);

    // check if the insert_point is still valid
    if (insert_point >= NumLumps())
        insert_point = -1;

    if (insert_point >= 0)
    {
        // fix various arrays containing lump indices
        FixGroup(levels, insert_point, 1, 0);
        FixGroup(patches, insert_point, 1, 0);
        FixGroup(sprites, insert_point, 1, 0);
        FixGroup(flats, insert_point, 1, 0);
        FixGroup(tx_tex, insert_point, 1, 0);

        directory.insert(directory.begin() + insert_point, lump);

        insert_point++;
    }
    else // add to end
    {
        directory.push_back(lump);
    }

    return lump;
}

void Wad_file::RecreateLump(Lump_c *lump, int max_size)
{
    SYS_ASSERT(begun_write);

    begun_max_size = max_size;

    int start = PositionForWrite(max_size);

    lump->l_start  = start;
    lump->l_length = 0;
}

Lump_c *Wad_file::AddLevel(const char *name, int max_size, int *lev_num)
{
    int actual_point = insert_point;

    if (actual_point < 0 || actual_point > NumLumps())
        actual_point = NumLumps();

    Lump_c *lump = AddLump(name, max_size);

    if (lev_num)
    {
        *lev_num = (int)levels.size();
    }

    levels.push_back(actual_point);

    return lump;
}

void Wad_file::InsertPoint(int index)
{
    // this is validated on usage
    insert_point = index;
}

int Wad_file::HighWaterMark()
{
    int offset = (int)sizeof(raw_wad_header_t);

    for (int k = 0; k < NumLumps(); k++)
    {
        Lump_c *lump = directory[k];

        // ignore zero-length lumps (their offset could be anything)
        if (lump->Length() <= 0)
            continue;

        int l_end = lump->l_start + lump->l_length;

        l_end = ((l_end + 3) / 4) * 4;

        if (offset < l_end)
            offset = l_end;
    }

    return offset;
}

int Wad_file::FindFreeSpace(int length)
{
    length = ((length + 3) / 4) * 4;

    // collect non-zero length lumps and sort by their offset
    std::vector<Lump_c *> sorted_dir;

    for (int k = 0; k < NumLumps(); k++)
    {
        Lump_c *lump = directory[k];

        if (lump->Length() > 0)
            sorted_dir.push_back(lump);
    }

    std::sort(sorted_dir.begin(), sorted_dir.end(), Lump_c::offset_CMP_pred());

    int offset = (int)sizeof(raw_wad_header_t);

    for (unsigned int k = 0; k < sorted_dir.size(); k++)
    {
        Lump_c *lump = sorted_dir[k];

        int l_start = lump->l_start;
        int l_end   = lump->l_start + lump->l_length;

        l_end = ((l_end + 3) / 4) * 4;

        if (l_end <= offset)
            continue;

        if (l_start >= offset + length)
            continue;

        // the lump overlapped the current gap, so bump offset

        offset = l_end;
    }

    return offset;
}

int Wad_file::PositionForWrite(int max_size)
{
    int want_pos;

    if (max_size <= 0)
        want_pos = HighWaterMark();
    else
        want_pos = FindFreeSpace(max_size);

    // determine if position is past end of file
    // (difference should only be a few bytes)
    //
    // Note: doing this for every new lump may be a little expensive,
    //       but trying to optimise it away will just make the code
    //       needlessly complex and hard to follow.

    if (fseek(fp, 0, SEEK_END) < 0)
        FatalError("Error seeking to new write position.\n");

    total_size = (int)ftell(fp);

    if (total_size < 0)
        FatalError("Error seeking to new write position.\n");

    if (want_pos > total_size)
    {
        SYS_ASSERT(want_pos < total_size + 8);

        WritePadding(want_pos - total_size);
    }
    else if (want_pos == total_size)
    {
        /* ready to write */
    }
    else
    {
        if (fseek(fp, want_pos, SEEK_SET) < 0)
            FatalError("Error seeking to new write position.\n");
    }

#if DEBUG_WAD
    DebugPrint("POSITION FOR WRITE: %d  (total_size %d)\n", want_pos, total_size);
#endif

    return want_pos;
}

bool Wad_file::FinishLump(int final_size)
{
    fflush(fp);

    // sanity check
    if (begun_max_size >= 0)
        if (final_size > begun_max_size)
            FatalError("Internal Error: wrote too much in lump (%d > %d)\n", final_size, begun_max_size);

    int pos = (int)ftell(fp);

    if (pos & 3)
    {
        WritePadding(4 - (pos & 3));
    }

    fflush(fp);
    return true;
}

int Wad_file::WritePadding(int count)
{
    static uint8_t zeros[8] = {0, 0, 0, 0, 0, 0, 0, 0};

    SYS_ASSERT(1 <= count && count <= 8);

    fwrite(zeros, count, 1, fp);

    return count;
}

//
// IDEA : Truncate file to "total_size" after writing the directory.
//
//        On Linux / MacOSX, this can be done as follows:
//                 - fflush(fp)   -- ensure STDIO has empty buffers
//                 - ftruncate(fileno(fp), total_size);
//                 - freopen(fp)
//
//        On Windows:
//                 - instead of ftruncate, use _chsize() or _chsize_s()
//                   [ investigate what the difference is.... ]
//

void Wad_file::WriteDirectory()
{
    dir_start = PositionForWrite();
    dir_count = NumLumps();

#if DEBUG_WAD
    DebugPrint("WriteDirectory...\n");
    DebugPrint("dir_start:%d  dir_count:%d\n", dir_start, dir_count);
#endif

    for (int k = 0; k < dir_count; k++)
    {
        Lump_c *lump = directory[k];
        SYS_ASSERT(lump);

        raw_wad_entry_t entry;

        lump->MakeEntry(&entry);

        if (fwrite(&entry, sizeof(entry), 1, fp) != 1)
            FatalError("Error writing WAD directory.\n");
    }

    fflush(fp);

    total_size = (int)ftell(fp);

#if DEBUG_WAD
    DebugPrint("total_size: %d\n", total_size);
#endif

    if (total_size < 0)
        FatalError("Error determining WAD size.\n");

    // update header at start of file

    rewind(fp);

    raw_wad_header_t header;

    memcpy(header.ident, (kind == 'I') ? "IWAD" : "PWAD", 4);

    header.dir_start   = LE_U32(dir_start);
    header.num_entries = LE_U32(dir_count);

    if (fwrite(&header, sizeof(header), 1, fp) != 1)
        FatalError("Error writing WAD header.\n");

    fflush(fp);
}

} // namespace ajbsp

//--- editor settings ---
// vi:ts=4:sw=4:noexpandtab
