------------------------------------------------------------------------
--  HARMONY THEMES
------------------------------------------------------------------------
--
--  Copyright (C) 2006-2017 Andrew Apted
--  Copyright (C)      2008 Sam Trenholme
--  Copyright (C) 2019-2020 MsrSgtShooterPerson
--  --Adapted from MsrSgtShooterPerson's Doom themes.lua file
    --Into a singular theme (Castle) for Heretic
--
--  This program is free software; you can redistribute it and/or
--  modify it under the terms of the GNU General Public License
--  as published by the Free Software Foundation; either version 2,
--  of the License, or (at your option) any later version.
--
------------------------------------------------------------------------

HARMONY.SINKS =
{
  -- sky holes --

  sky_plain =
  {
    mat   = "_SKY",
    dz    = 64,
    light = 16,
  },

  -- liquid floor --

  liquid_plain =
  {
    mat = "WATER",
    dz  = -12,
  },

}


HARMONY.THEMES =
{
  DEFAULTS =
  {

    keys =
    {
      kc_green = 50,
      kc_yellow = 50,
      kc_purple = 50
    },

    barrels = 
    {
      barrel = 50
    },

    cave_torches =
    {
      wall_torch   = 70,
    },

    outdoor_torches = 
    {

    },

    cliff_trees =
    {
      dead_tree = 50,
      tree_stump = 15
    },

    park_decor =
    {
      dead_tree = 50,
      tree_stump = 15
    },

    skyboxes =
    {

    },

    scenic_fences =
    {
      LASER_BEAM = 50
    },

    cage_lights = { 0, 8, 12, 13 },

    pool_depth = 24,
  },


  ndf_base =
  {

   style_list =
    {
      caves = { none=60, few=40, some=12, heaps=2 },
      outdoors = { none=10, few=35, some=90, heaps=30 },
      pictures = { few=20, some=80, heaps=30 },
      hallways = { none=30, few=80, some=15, heaps=10 },
      windows = { few=25, some=50, heaps=90 },
      cages = { none=30, few=50, some=20, heaps=10 },
      liquids = { none=45, few=30, some=20, heaps=5 },
      doors = { few=20, some=70, heaps=30 },
      steepness = { few=25, some=50, heaps=90 },
      big_rooms = { none=25, few=40, some=25, heaps=15 },
      ambushes = { none=5, few=20, some=75, heaps=30 },
      teleporters = { none=20, few=30, some=65, heaps=10 },
      keys = { none=15, few=50, some=50, heaps=20 },
      symmetry = { none=40, few=30, some=35, heaps=25 },
      switches = { none=20, few=60, some=40, heaps=10 },
      secrets = { few=5, some=80, heaps=25 },
      traps   = { none=10, few=40, some=70, heaps=25 },
      barrels = { none=10, few=50, some=20, heaps=5 },
    },

    liquids =
    {
      water = 50,
    },

    narrow_halls =
    {
      vent = 50,
    },

    wide_halls =
    {
      deuce = 50,
    },

    floor_sinks =
    {
      liquid_plain = 50,
    },

    ceiling_sinks =
    {
      sky_plain = 50,
    },

    fences =
    {
      GRAY1 = 80,
    },

    cage_mats =
    {
      GRAY1 = 80,
    },

    facades =
    {
      GRAY1 = 80,
    },

    fence_groups =
    {
      PLAIN = 50,
    },

    fence_posts =
    {
      Post = 50,
    },

    beam_groups =
    {
      beam_metal = 50,
    },

    window_groups =
    {
      square = 70,
      tall   = 30,
    },

    wall_groups =
    {
      PLAIN = 50,
    },

    ceil_light_prob = 70,

    sink_style =
    {
      sharp = 1,
      curved = 0.1,
    },

    steps_mat = "GRAY1",

    post_mat  = "METAL",

  },

}


HARMONY.ROOM_THEMES =
{
  any_Hallway =
  {
    env  = "hallway",
    prob = 1,

    walls =
    {
      GRAY1  = 60,
    },

    floors =
    {
      FLOOR4_8 = 50,
    },

    ceilings =
    {
      FLOOR4_8 = 50,
    },
  },

  any_Hallway_Deuce =
  {
    env  = "hallway",
    group = "deuce",
    prob = 1,

    walls =
    {
      GRAY1  = 60,
    },

    floors =
    {
      FLOOR4_8 = 50,
    },

    ceilings =
    {
      FLOOR4_8 = 50,
    },
  },

  any_Hallway_Vent =
  {
    env  = "hallway",
    group = "vent",
    prob = 1,

    walls =
    {
      GRAY1  = 60,
    },

    floors =
    {
      FLOOR4_8 = 50,
    },

    ceilings =
    {
      FLOOR4_8 = 50,
    },
  },

  any_Gray =
  {
    env  = "building",
    prob = 50,

    walls =
    {
      GRAY1  = 60,
    },

    floors =
    {
      FLOOR4_8 = 50,
    },

    ceilings =
    {
      FLOOR4_8 = 50,
    },
  },

  any_Outdoors =
  {
    env  = "outdoor",
    prob = 50,

    floors =
    {
      ROCKS = 50,
    },

    naturals =
    {
      ROCKS = 50,
    },

    porch_floors =
    {
      ROCKS = 50,
    },

  },

  any_Cave =
  {
    env  = "cave",
    prob = 50,

    floors =
    {
      ROCKS = 50,
    },

    walls =
    {
      ROCKS = 50,
    },

  },

}
------------------------------------------------------------------------


HARMONY.ROOMS =
{
  GENERIC =
  {
    env = "any",
  },

  OUTSIDE =
  {
    env = "outdoor",
    prob = 50,
  },

}


------------------------------------------------------------------------


OB_THEMES["ndf_base"] =
{
  label = _("NDF Base"),
  game = "harmony",
  name_class = "CASTLE",
  mixed_prob = 50,
}

