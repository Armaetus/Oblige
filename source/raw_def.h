//------------------------------------------------------------------------
//
//  AJ-BSP  Copyright (C) 2007-2018  Andrew Apted
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

#pragma once

#include <stdint.h>

/* ----- The wad structures ---------------------- */

constexpr uint8_t WAD_TEX_NAME  = 8;
constexpr uint8_t WAD_FLAT_NAME = 8;

// wad header
#pragma pack(push, 1)
typedef struct raw_wad_header_s
{
    char ident[4];

    uint32_t num_entries;
    uint32_t dir_start;

} raw_wad_header_t;
#pragma pack(pop)

// directory entry
#pragma pack(push, 1)
typedef struct raw_wad_entry_s
{
    uint32_t pos;
    uint32_t size;

    char name[8];

} raw_wad_entry_t;
#pragma pack(pop)

// Lump order in a map WAD: each map needs a couple of lumps
// to provide a complete scene geometry description.
typedef enum
{
    LL_LABEL = 0, // A separator name, ExMx or MAPxx
    LL_THINGS,    // Monsters, items..
    LL_LINEDEFS,  // LineDefs, from editing
    LL_SIDEDEFS,  // SideDefs, from editing
    LL_VERTEXES,  // Vertices, edited and BSP splits generated
    LL_SEGS,      // LineSegs, from LineDefs split by BSP
    LL_SSECTORS,  // SubSectors, list of LineSegs
    LL_NODES,     // BSP nodes
    LL_SECTORS,   // Sectors, from editing
    LL_REJECT,    // LUT, sector-sector visibility
    LL_BLOCKMAP,  // LUT, motion clipping, walls/grid element
    LL_BEHAVIOR   // Hexen scripting stuff
} lump_order_e;

/* ----- The level structures ---------------------- */

#pragma pack(push, 1)
typedef struct raw_vertex_s
{
    int16_t x, y;

} raw_vertex_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct raw_v2_vertex_s
{
    int32_t x, y;

} raw_v2_vertex_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct raw_linedef_s
{
    uint16_t start; // from this vertex...
    uint16_t end;   // ... to this vertex
    uint16_t flags; // linedef flags (impassible, etc)
    uint16_t type;  // special type (0 for none, 97 for teleporter, etc)
    int16_t  tag;   // this linedef activates the sector with same tag
    uint16_t right; // right sidedef
    uint16_t left;  // left sidedef (only if this line adjoins 2 sectors)

} raw_linedef_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct raw_hexen_linedef_s
{
    uint16_t start;   // from this vertex...
    uint16_t end;     // ... to this vertex
    uint16_t flags;   // linedef flags (impassible, etc)
    uint8_t  type;    // special type
    uint8_t  args[5]; // special arguments
    uint16_t right;   // right sidedef
    uint16_t left;    // left sidedef

} raw_hexen_linedef_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct raw_sidedef_s
{
    int16_t x_offset;  // X offset for texture
    int16_t y_offset;  // Y offset for texture

    char upper_tex[8]; // texture name for the part above
    char lower_tex[8]; // texture name for the part below
    char mid_tex[8];   // texture name for the regular part

    uint16_t sector;   // adjacent sector

} raw_sidedef_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct raw_sector_s
{
    int16_t floorh;    // floor height
    int16_t ceilh;     // ceiling height

    char floor_tex[8]; // floor texture
    char ceil_tex[8];  // ceiling texture

    uint16_t light;    // light level (0-255)
    uint16_t type;     // special type (0 = normal, 9 = secret, ...)
    int16_t  tag;      // sector activated by a linedef with same tag

} raw_sector_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct raw_thing_s
{
    int16_t  x, y;    // position of thing
    int16_t  angle;   // angle thing faces (degrees)
    uint16_t type;    // type of thing
    uint16_t options; // when appears, deaf, etc..

} raw_thing_t;
#pragma pack(pop)

#pragma pack(push, 1)
// -JL- Hexen thing definition
typedef struct raw_hexen_thing_s
{
    int16_t  tid;     // tag id (for scripts/specials)
    int16_t  x, y;    // position
    int16_t  height;  // start height above floor
    int16_t  angle;   // angle thing faces
    uint16_t type;    // type of thing
    uint16_t options; // when appears, deaf, dormant, etc..

    uint8_t special;  // special type
    uint8_t args[5];  // special arguments

} raw_hexen_thing_t;
#pragma pack(pop)

/* ----- The BSP tree structures ----------------------- */

#pragma pack(push, 1)
typedef struct raw_seg_s
{
    uint16_t start;   // from this vertex...
    uint16_t end;     // ... to this vertex
    uint16_t angle;   // angle (0 = east, 16384 = north, ...)
    uint16_t linedef; // linedef that this seg goes along
    uint16_t flip;    // true if not the same direction as linedef
    uint16_t dist;    // distance from starting point

} raw_seg_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct raw_gl_seg_s
{
    uint16_t start;   // from this vertex...
    uint16_t end;     // ... to this vertex
    uint16_t linedef; // linedef that this seg goes along, or -1
    uint16_t side;    // 0 if on right of linedef, 1 if on left
    uint16_t partner; // partner seg number, or -1

} raw_gl_seg_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct raw_v5_seg_s
{
    uint32_t start;   // from this vertex...
    uint32_t end;     // ... to this vertex
    uint16_t linedef; // linedef that this seg goes along, or -1
    uint16_t side;    // 0 if on right of linedef, 1 if on left
    uint32_t partner; // partner seg number, or -1

} raw_v5_seg_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct raw_zdoom_seg_s
{
    uint32_t start;   // from this vertex...
    uint32_t end;     // ... to this vertex
    uint16_t linedef; // linedef that this seg goes along, or -1
    uint8_t  side;    // 0 if on right of linedef, 1 if on left

} raw_zdoom_seg_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct raw_bbox_s
{
    int16_t maxy, miny;
    int16_t minx, maxx;

} raw_bbox_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct raw_node_s
{
    int16_t    x, y;        // starting point
    int16_t    dx, dy;      // offset to ending point
    raw_bbox_t b1, b2;      // bounding rectangles
    uint16_t   right, left; // children: Node or SSector (if high bit is set)

} raw_node_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct raw_subsec_s
{
    uint16_t num;   // number of Segs in this Sub-Sector
    uint16_t first; // first Seg

} raw_subsec_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct raw_v5_subsec_s
{
    uint32_t num;   // number of Segs in this Sub-Sector
    uint32_t first; // first Seg

} raw_v5_subsec_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct raw_zdoom_subsec_s
{
    uint32_t segnum;

    // NOTE : no "first" value, segs must be contiguous and appear
    //        in an order dictated by the subsector list, e.g. all
    //        segs of the second subsector must appear directly after
    //        all segs of the first subsector.

} raw_zdoom_subsec_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct raw_v5_node_s
{
    // this structure used by ZDoom nodes too

    int16_t    x, y;        // starting point
    int16_t    dx, dy;      // offset to ending point
    raw_bbox_t b1, b2;      // bounding rectangles
    uint32_t   right, left; // children: Node or SSector (if high bit is set)

} raw_v5_node_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct raw_blockmap_header_s
{
    int16_t x_origin, y_origin;
    int16_t x_blocks, y_blocks;

} raw_blockmap_header_t;
#pragma pack(pop)

/* ----- Graphical structures ---------------------- */

#pragma pack(push, 1)
typedef struct
{
    int16_t x_origin;
    int16_t y_origin;

    uint16_t pname;    // index into PNAMES
    uint16_t stepdir;  // NOT USED
    uint16_t colormap; // NOT USED

} raw_patchdef_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct
{
    int16_t  x_origin;
    int16_t  y_origin;
    uint16_t pname; // index into PNAMES

} raw_strife_patchdef_t;
#pragma pack(pop)

// Texture definition.
//
// Each texture is composed of one or more patches,
// with patches being lumps stored in the WAD.
//

#pragma pack(push, 1)
typedef struct
{
    char name[8];

    uint32_t masked;        // NOT USED
    uint16_t width;
    uint16_t height;
    uint16_t column_dir[2]; // NOT USED
    uint16_t patch_count;

    raw_patchdef_t patches[1];

} raw_texture_t;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct
{
    char name[8];

    uint32_t masked; // NOT USED
    uint16_t width;
    uint16_t height;
    uint16_t patch_count;

    raw_strife_patchdef_t patches[1];

} raw_strife_texture_t;
#pragma pack(pop)

// Patches.
//
// A patch holds one or more columns.
// Patches are used for sprites and all masked pictures,
// and we compose textures from the TEXTURE1/2 lists
// of patches.
//

#pragma pack(push, 1)
struct raw_patch_header_t
{
    uint16_t width;
    uint16_t height;

    int16_t x_offset;
    int16_t y_offset;
};
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct patch_s
{
    // bounding box size
    int16_t width;
    int16_t height;

    // pixels to the left of origin
    int16_t leftoffset;

    // pixels below the origin
    int16_t topoffset;

    uint32_t columnofs[1]; // only [width] used

} patch_t;
#pragma pack(pop)

//
// LineDef attributes.
//

typedef enum
{
    // solid, is an obstacle
    MLF_Blocking = 0x0001,

    // blocks monsters only
    MLF_BlockMonsters = 0x0002,

    // backside will not be present at all if not two sided
    MLF_TwoSided = 0x0004,

    // If a texture is pegged, the texture will have
    // the end exposed to air held constant at the
    // top or bottom of the texture (stairs or pulled
    // down things) and will move with a height change
    // of one of the neighbor sectors.
    //
    // Unpegged textures allways have the first row of
    // the texture at the top pixel of the line for both
    // top and bottom textures (use next to windows).

    // upper texture unpegged
    MLF_UpperUnpegged = 0x0008,

    // lower texture unpegged
    MLF_LowerUnpegged = 0x0010,

    // in AutoMap: don't map as two sided: IT'S A SECRET!
    MLF_Secret = 0x0020,

    // sound rendering: don't let sound cross two of these
    MLF_SoundBlock = 0x0040,

    // don't draw on the automap at all
    MLF_DontDraw = 0x0080,

    // set as if already seen, thus drawn in automap
    MLF_Mapped = 0x0100,

    // -AJA- this one is from Boom. Allows multiple lines to
    //       be pushed simultaneously.
    MLF_Boom_PassThru = 0x0200,
} lineflag_e;

typedef enum
{
    MLF_Eternity_3DMidTex = 0x0400,
} eternity_lineflag_e;

typedef enum
{
    // -AJA- these three are from XDoom
    MLF_XDoom_Translucent = 0x0400,
    MLF_XDoom_ShootBlock  = 0x0800,
    MLF_XDoom_SightBlock  = 0x1000,
} xdoom_lineflag_e;

typedef enum
{
    // flags 0x001 .. 0x200 are same as DOOM above

    MLF_Repeatable = 0x0200,
    MLF_Activation = 0x1c00,
} hexen_lineflag_e;

typedef enum
{
    // these are supported by ZDoom (and derived ports)
    MLF_ZDoom_MonCanActivate  = 0x2000,
    MLF_ZDoom_BlockPlayers    = 0x4000,
    MLF_ZDoom_BlockEverything = 0x8000,
} zdoom_lineflag_e;

typedef enum
{
    SPAC_Cross   = 0, // when line is crossed (W1 / WR)
    SPAC_Use     = 1, // when line is used    (S1 / SR)
    SPAC_Monster = 2, // when monster walks over line
    SPAC_Impact  = 3, // when bullet/projectile hits line (G1 / GR)
    SPAC_Push    = 4, // when line is bumped (player is stopped)
    SPAC_PCross  = 5, // when projectile crosses the line
} hexen_activation_e;

//
// Sector attributes.
//

typedef enum
{
    BoomSF_TypeMask   = 0x001F,
    BoomSF_DamageMask = 0x0060,

    BoomSF_Secret     = 0x0080,
    BoomSF_Friction   = 0x0100,
    BoomSF_Wind       = 0x0200,
    BoomSF_NoSounds   = 0x0400,
    BoomSF_QuietPlane = 0x0800
} boom_sectorflag_e;

//
// Thing attributes.
//

typedef enum
{
    // these four used in Hexen too
    MTF_Easy   = 1,
    MTF_Medium = 2,
    MTF_Hard   = 4,
    MTF_Ambush = 8,

    MTF_Not_SP   = 16,
    MTF_Not_DM   = 32,
    MTF_Not_COOP = 64,

    MTF_Friend   = 128,
    MTF_Reserved = 256,
} thing_option_e;

typedef enum
{
    MTF_Hexen_Dormant = 16,

    MTF_Hexen_Fighter = 32,
    MTF_Hexen_Cleric  = 64,
    MTF_Hexen_Mage    = 128,

    MTF_Hexen_SP   = 256,
    MTF_Hexen_COOP = 512,
    MTF_Hexen_DM   = 1024,
} hexen_option_e;

//
// Polyobject stuff
//
constexpr uint8_t HEXTYPE_POLY_START    = 1;
constexpr uint8_t HEXTYPE_POLY_EXPLICIT = 5;

// -JL- Hexen polyobj thing types
constexpr uint16_t PO_ANCHOR_TYPE     = 3000;
constexpr uint16_t PO_SPAWN_TYPE      = 3001;
constexpr uint16_t PO_SPAWNCRUSH_TYPE = 3002;

// -JL- ZDoom polyobj thing types
constexpr uint16_t ZDOOM_PO_ANCHOR_TYPE     = 9300;
constexpr uint16_t ZDOOM_PO_SPAWN_TYPE      = 9301;
constexpr uint16_t ZDOOM_PO_SPAWNCRUSH_TYPE = 9302;

//--- editor settings ---
// vi:ts=4:sw=4:noexpandtab
