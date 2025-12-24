//----------------------------------------------------------------------------
//  Assertions
//----------------------------------------------------------------------------
//
//  OBSIDIAN Level Maker
//
//  Copyright (C) 2021-2025 The OBSIDIAN Team
//  Copyright (C) 2006-2017 Andrew Apted
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
//----------------------------------------------------------------------------

#include "sys_assert.h"

#include <format>

#include "lib_util.h"
#include "main.h"

[[noreturn]] void AssertFail(const char *condition,
    const std::source_location location)
{
    FatalError("Sorry, an internal error occurred.\n%s",
        std::format("Assertion ({}) failed\nIn function {} ({}:{})", condition, 
        location.function_name(), GetFilename(location.file_name()), location.line()).c_str());
}

//--- editor settings ---
// vi:ts=4:sw=4:noexpandtab
