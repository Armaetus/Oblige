----------------------------------------------------------------
-- GAME DEF : Wolfenstein 3D
----------------------------------------------------------------
--
--  Oblige Level Maker (C) 2006,2007 Andrew Apted
--
--  This program is free software; you can redistribute it and/or
--  modify it under the terms of the GNU General Public License
--  as published by the Free Software Foundation; either version 2
--  of the License, or (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
----------------------------------------------------------------

-- constants
WF_NO_TILE = 48
WF_NO_OBJ  = 0


WF_THING_NUMS =
{
  -- players
  player1 = { easy=19, medium=19, hard=19, dirs="player" },

  -- enemies
  dog     = { easy=138, medium=174, hard=210, dirs=true },

  guard   = { easy=108, medium=144, hard=180, dirs=true, patrol=4 },
  officer = { easy=116, medium=152, hard=188, dirs=true, patrol=4 },
  ss_dude = { easy=126, medium=162, hard=198, dirs=true, patrol=4 },
  mutant  = { easy=216, medium=234, hard=252, dirs=true, patrol=4 },

  -- bosses
  fake_hitler   = 160,
  fat_face      = 179,
  gretel_grosse = 197,
  hans_grosse   = 214,

  schabbs       = 196,
  giftmacher    = 215,
  hitler        = 178,

  -- ghosts
  blinky = 224, -- red
  clyde  = 225, -- yellow
  pinky  = 226, -- pink
  inky   = 227, -- blue

  -- pickups
  k_silver = 43,
  k_gold = 44,

  first_aid = 48,
  good_food = 47,
  dog_food  = 29,

  clip_8 = 49,
  machine_gun = 50,
  gatling_gun = 51,

  cross   = 52,
  chalice = 53,
  bible   = 54,
  crown   = 55,
  one_up  = 56,

  -- scenery
  puddle = 23,
  green_barrel = 24,
  table_chairs = 25,
  floor_lamp = 26,
  chandelier = 27,
  hanged_man = 28,
  red_pillar = 30,

  tree = 31,
  skeleton_flat = 32,
  sink = 33,
  plant = 34,
  urn = 35,
  bare_table = 36,
  ceil_light = 37,
  kitchen_stuff = 38,

  suit_of_armor = 39,
  hanging_cage = 40,
  skeleton_in_cage = 41,
  skeleton_relax = 42,

  bed    = 45,  --???
  basket = 46,

  gibs_1 = 57,
  barrel = 58,
  water_well = 59,
  empty_well = 60,
  gibs_2 = 61,
  flag = 62,

  aardwolf = 63,
  junk_1 = 64,
  junk_2 = 65,
  junk_3 = 66,
  pots = 67,
  stove = 68,
  spears = 69,
  vines = 70,

  dud_clip = 71,

  dead_guard = 124,

  -- special
  secret  = 98,
  trigger = 99,

  turn_E  = 90,
  turn_NE = 91,
  turn_N  = 92,
  turn_NW = 93,
  turn_W  = 94,
  turn_SW = 95,
  turn_S  = 96,
  turn_SE = 97,

  --- Spear of Destiny ---

  spear_of_destiny = 74,

  clip_25 = 72,

  trans_grosse = 125,
  uber_mutant  = 142,
  wilhelm = 143,
  death_knight = 161,

  ghost = 106,
  angel = 107,

  skull_stick = 33,   -- REPLACES: sink
  skull_cage  = 45,   -- REPLACES: bed
  ceil_light2 = 63,   -- REPLACES: aardwolf

  cow_skull    = 67,  -- REPLACES: pots
  blood_well   = 68,  -- REPLACES: stove
  angel_statue = 69,  -- REPLACES: spears
  marble_column = 71, -- REPLACES: dud_clip
}

WF_TILE_NUMS =
{
  area_min = 108,
  area_max = 143,

  deaf_guard = 106,
  elevator_secret = 107,

  door = { 90, 91 },  -- E/W then N/S

  door_silver = { 92, 93 },
  door_gold   = { 94, 95 },

  door_elevator = { 100, 101 },
}

----------------------------------------------------------------

WF_COMBOS =
{
  WOOD =
  {
    mat_pri = 5,
    wall = 12, void = 12, floor=0, ceil=0,
    decorate = 10, door_side = 23,

    theme_probs = { BUNKER=120, CELLS=25  },
  },

  GRAY_STONE =
  {
    mat_pri = 7,
    wall = 1, void = 1, floor=0, ceil=0,
    decorate = { 4,6 }, door_side = 28,

    theme_probs = { BUNKER=60, CAVE=30 },
  },

  GRAY_BRICK =
  {
    mat_pri = 7,
    wall = 35, void = 35, floor=0, ceil=0,
    decorate = { 37,43 }, door_side = 49,

    theme_probs = { CELLS=60, BUNKER=40 },
  },

  BLUE_STONE =
  {
    mat_pri = 6,
    wall = 8, void = 8, floor=0, ceil=0,
    decorate = { 5,7 }, door_side = 41,

    theme_probs = { CELLS=140 },
  },

  BLUE_BRICK =
  {
    mat_pri = 6,
    wall = 40, void = 40, floor=0, ceil=0,
    decorate = { 34,36 },

    theme_probs = { CELLS=80 },
  },

  RED_BRICK =
  {
    mat_pri = 5,
    wall = 17, void = 17, floor=0, ceil=0,
    decorate = { 18,38 }, door_side = 20,

    theme_probs = { BUNKER=80 },
  },
 
  PURPLE_STONE =
  {
    mat_pri = 1,
    wall = 19, void = 19, floor=0, ceil=0,
    decorate = 25,

    theme_probs = { CAVE=30 },
  },

  BROWN_CAVE =
  {
    mat_pri = 3,
    wall = 29, void = 29, floor=0, ceil=0,
    decorate = { 30,31,32 },

    theme_probs = { CAVE=90 },
  },
 
  BROWN_BRICK =
  {
    mat_pri = 5,
    wall = 42, void = 42, floor=0, ceil=0,
    door_side = 47,

    theme_probs = { CAVE=20 },
  },

  BROWN_STONE =
  {
    mat_pri = 5,
    wall = 44, void = 44, floor=0, ceil=0,

    theme_probs = { CAVE=50, CELLS=20 },
  },
}

WF_EXITS =
{
  ELEVATOR =  -- FIXME: not needed, remove
  {
    mat_pri = 0,
    wall = 21, void = 21, floor=0, ceil=0,
  },
}


WF_KEY_DOORS =
{
  k_silver = { kind_rep="door_silver", door_side=14 },
  k_gold   = { kind_rep="door_gold",   door_side=14 },
}

---- QUEST STUFF ----------------

WF_QUESTS =
{
  key = { k_silver=60, k_gold=30, },

  switch = { },

  weapon = { machine_gun=50, gatling_gun=20, },

  item =
  {
    crown = 50, bible = 50, cross = 50, chalice = 50,
    one_up = 2,
  },

  exit =
  {
    elevator=50
  }
}

WF_SCENERY =
{
  -- LIGHTS --

  floor_lamp = { r=24,h=48, light=true },
  ceil_light = { r=24,h=48, pass=true, ceil=true, light=true, add_mode="island" },
  chandelier = { r=24,h=48, pass=true, ceil=true, light=true, add_mode="island" },

  -- URBANE --
  
  puddle = { r=24,h= 4, pass=true },
  sink   = { r=24,h=48, add_mode="extend" },

  tree   = { r=24,h=48 },
  plant  = { r=24,h=48 },
  urn    = { r=24,h=48 },
  pots   = { r=24,h=48, add_mode="extend", pass=true },
  stove  = { r=24,h=48, add_mode="extend" },
  bed    = { r=24,h=48, add_mode="extend" },
  basket = { r=24,h=48 },

  bare_table    = { r=24,h=48, add_mode="island" },
  table_chairs  = { r=24,h=48, add_mode="island" },
  kitchen_stuff = { r=24,h=48 },

  -- CASTLEY --

  suit_of_armor = { r=24,h=48, add_mode="extend" },
  red_pillar    = { r=24,h=48, add_mode="island" },
  barrel        = { r=24,h=48 },
  green_barrel  = { r=24,h=48 },
  water_well    = { r=24,h=48 },
  empty_well    = { r=24,h=48 },

  flag   = { r=24,h=48 },
  junk_1 = { r=24,h=48, pass=true },
  junk_2 = { r=24,h=48, pass=true },
  junk_3 = { r=24,h=48, pass=true },
  vines  = { r=24,h=48, pass=true },
  spears = { r=24,h=48, add_mode="extend" },

  -- GORY --

  hanged_man       = { r=24,h=48, add_mode="island" },
  hanging_cage     = { r=24,h=48, add_mode="island" },
  skeleton_in_cage = { r=24,h=48, add_mode="island" },
  skeleton_flat    = { r=24,h= 8, pass=true },
  skeleton_relax   = { r=24,h= 8, pass=true },

  dead_guard = { r=24,h=8, pass=true },

  gibs_1 = { r=24,h=4, pass=true },
  gibs_2 = { r=24,h=4, pass=true },
}

WF_ROOMS =
{
  PLAIN =
  {
  },

  HALLWAY =
  {
    scenery = { ceil_light=90 },

    space_range = { 10, 50 },
  },

  STORAGE =
  {
    scenery = { barrel=50, green_barrel=80, }
  },

  TREASURE =
  {
    pickups = { cross=90, chalice=90, bible=20, crown=5 },
    pickup_rate = 90,
  },

  SUPPLIES =
  {
    scenery = { barrel=70, bed=40, },

    pickups = { first_aid=50, good_food=90, clip_8=70 },
    pickup_rate = 66,
  },

  QUARTERS =
  {
    scenery = { table_chairs=70, bed=70, chandelier=70,
                bare_table=20, puddle=20,
                floor_lamp=10, urn=10, plant=10
              },
  },

  BATHROOM =
  {
    scenery = { sink=50, puddle=90, water_well=30, empty_well=30 },
  },

  KITCHEN =
  {
    scenery = { kitchen_stuff=50, stove=50, pots=50,
                puddle=20, bare_table=20, table_chairs=5,
                sink=10, barrel=10, green_barrel=5, plant=2
              },

    pickups = { good_food=15, dog_food=5 },
    pickup_rate = 20,
  },

  TORTURE =
  {
    scenery = { hanging_cage=80, skeleton_in_cage=80,
                skeleton_relax=30, skeleton_flat=40,
                hanged_man=60, spears=10, bare_table=10,
                gibs_1=10, gibs_2=10,
                junk_1=10, junk_2=10,junk_3=10
              },
  },
}

WF_THEMES =
{
  -- Main Themes:
  --
  -- 1. BUNKER --> brick/wood, humans, quarters, plants/urns
  -- 2. CELLS  --> blue_stone, dogs, skeletons 
  -- 3. CAVE   --> cave/rock tex, vines, mutants

  BUNKER =
  {
    room_probs =
    {
      STORAGE = 50,
      TREASURE = 10, SUPPLIES = 15,
      QUARTERS = 50, BATHROOM = 15,
      KITCHEN = 30,  TORTURE = 20,
    },

    general_scenery =
    {
      suit_of_armor=50, flag=20,
    },
  },

  CELLS =
  {
    room_probs =
    {
      STORAGE = 40,
      TREASURE = 5,  SUPPLIES = 10,
      QUARTERS = 20, BATHROOM = 10,
      KITCHEN = 10,  TORTURE = 60,
    },

    general_scenery =
    {
      dead_guard=50, puddle=10,
    },

    monster_prefs =
    {
      dog=2.0, guard=2.0,
    },
  },

  CAVE =
  {
    room_probs =
    {
      STORAGE = 30,
      TREASURE = 15, SUPPLIES = 5,
      QUARTERS = 15, BATHROOM = 30,
      KITCHEN = 5,   TORTURE = 30,
    },

    general_scenery =
    {
      vines=90, spears=30,
    },

    monster_prefs =
    {
      mutant=6.0, officer=2.0,
    },

    trim_mode = "rough_hew",
  },

--[[
  SECRET =
  {
    prob=0, -- special style, never chosen randomly

    room_probs =
    {
      STORAGE = 10,
      TREASURE = 90, SUPPLIES = 70,
      QUARTERS = 2,  BATHROOM = 2,
      KITCHEN = 20,  TORTURE = 2,
    },

    -- combo_probs : when missing, all have same prob
  },
--]]
}


----------------------------------------------------------------

WF_MONSTERS =
{
  dog     = { prob=20, hp=1,   dm=5,  fp=10, r=20,h=40, melee=true, },
  guard   = { prob=60, hp=25,  dm=10, fp=10, r=20,h=40, hitscan=true, cage_fallback=10 },
  officer = { prob=30, hp=50,  dm=20, fp=10, r=20,h=40, hitscan=true, },
  mutant  = { prob=10, hp=55,  dm=35, fp=10, r=20,h=40, hitscan=true, },
  ss_dude = { prob=50, hp=100, dm=30, fp=10, r=20,h=40, hitscan=true, },
}

WF_BOSSES =
{
  -- FIXME: hit-points are just averages of skill 2 and 3
 
  -- FIXME: dm values are crap!

  fat_face      = { hp=1000, dm=50, r=20,h=40, hitscan=true },
  hans_grosse   = { hp=1000, dm=30, r=20,h=40, hitscan=true },
  gretel_grosse = { hp=1000, dm=50, r=20,h=40, hitscan=true },
  giftmacher    = { hp=1000, dm=50, r=20,h=40 },

  fake_hitler   = { hp=350,  dm=50, r=20,h=40 },
  schabbs       = { hp=1250, dm=70, r=20,h=40 },

  -- this includes both Hitlers (in and out of the armor suit)
  hitler        = { hp=1100, dm=90, r=20,h=40, hitscan=true },
}

WF_MONSTER_GIVE =
{
  guard   = { { ammo="bullet", give=4 } },
  officer = { { ammo="bullet", give=4 } },
  mutant  = { { ammo="bullet", give=4 } },

  ss_dude = { { weapon="machine_gun" } },
}

WF_WEAPONS =
{
  knife       = { melee=true,           rate=3.0, dm= 7, freq= 2, held=true },
  pistol      = { ammo="bullet", per=1, rate=3.0, dm=17, freq=10, held=true },

  machine_gun = { ammo="bullet", give=4, per=1, rate=8.0,  dm=17, freq=30, },
  gatling_gun = { ammo="bullet", give=6, per=1, rate=16.0, dm=17, freq=90, },

  -- Note: machine_gun actually gives _6_ bullets.
  -- However: we don't model the fact that the SS_DUDE only
  -- drops a 4-bullet clip if you already have the machine gun.
  -- Therefore: this hack should maintain ammo balance.
}

WF_PICKUPS =
{
  first_aid = { stat="health", give=25 },
  good_food = { stat="health", give=10 },
  dog_food  = { stat="health", give=4  },

  -- NOTE: no "gibs" here, they are fairly insignificant

  clip_8  =   { stat="bullet", give=8 },
}

WF_INITIAL_MODEL =
{
  health=100, armor=0, bullet=8,
  knife=true, pistol=true
}


------------------------------------------------------------

WF_EPISODE_THEMES =
{
  { CELLS=7, BUNKER=5, CAVE=3 },
  { CELLS=6, BUNKER=8, CAVE=4 },
  { CELLS=6, BUNKER=8, CAVE=4 },

  { CELLS=6, BUNKER=8, CAVE=4 },
  { CELLS=6, BUNKER=8, CAVE=4 },
  { CELLS=6, BUNKER=8, CAVE=4 },
}

WF_SECRET_EXITS =
{
  E1L1 = true,
  E2L1 = true,
  E3L7 = true,

  E4L3 = true,
  E5L5 = true,
  E6L3 = true,
}

WF_EPISODE_BOSSES =
{
  "hans_grosse",
  "schabbs",
  "hitler",

  "giftmacher",
  "gretel_grosse",
  "fat_face",
}

WF_KEY_NUM_PROBS =
{
  small   = { 90, 50, 20 },
  regular = { 40, 90, 40 },
  large   = { 20, 50, 90 },
}

WF_QUEST_LEN_PROBS =
{
  ----------  2   3   4   5   6   7   8  9  10  -------

  key    = {  0,  0,  0, 90, 70, 30, 12, 6, 2, 2, 2 },
  boss   = {  0,  0,  0, 90, 70, 30, 12, 6, 2, 2, 2 },
  exit   = {  0,  0, 50, 90, 70, 30, 12, 6, 2, 2, 2 },

  weapon = {  0, 90, 50, 12, 4, 2 },
  item   = { 15, 70, 70, 15 },  -- treasure
}

function wolf3d_get_levels(episode)

  local level_list = {}

  local theme_probs = WF_EPISODE_THEMES[episode]

  local boss_kind = WF_EPISODE_BOSSES[episode]
  if SETTINGS.length ~= "full" then
    boss_kind = WF_EPISODE_BOSSES[rand_irange(1,6)]
  end

  local secret_kind = "pacman"

  for map = 1,10 do
    local Level =
    {
      name = string.format("E%dL%d", episode, map),

      episode   = episode,
      ep_along  = map,
      ep_length = 10,

      theme_probs = theme_probs,
      sky_info = { color="blue", light=192 }, -- dummy

      boss_kind   = (map == 9)  and boss_kind,
      secret_kind = (map == 10) and secret_kind,

      quests = {},
    }

    if WF_SECRET_EXITS[Level.name] then
      Level.secret_exit = true
    end

    table.insert(level_list, Level)
  end


  -- decide quests
  
  local function add_quest(L, kind, item)
    local len_probs = non_nil(WF_QUEST_LEN_PROBS[kind])
    local Quest =
    {
      kind = kind,
      item = item,
      want_len = 1 + rand_index_by_probs(len_probs),
    }
    table.insert(L.quests, Quest)
    return Quest
  end

  local function dump_levels()
    for idx,L in ipairs(level_list) do
      con.printf("Wolf3d episode [%d] map [%d] : %s\n", episode, idx, L.name)
      show_quests(L.quests)
    end
  end


  local gatling_maps =
  {
    [rand_irange(2,3)] = true,
    [rand_irange(4,6)] = true,
    [rand_irange(7,9)] = true,
  }

  for map = 1,10 do
    local Level = level_list[map]

    -- weapons and keys

    if rand_odds(90 - map*8) then
      add_quest(Level, "weapon", "machine_gun")
    end

    if gatling_maps[map] then
      add_quest(Level, "weapon", "gatling_gun")
    end

    local keys = rand_index_by_probs(WF_KEY_NUM_PROBS[SETTINGS.size]) - 1

    if keys >= 1 then
      add_quest(Level, "key", "k_silver")
    end

    -- treasure

    local ITEM_PROBS = { small=25, regular=50, large=75 }

    for i = 1,4 do
      if rand_odds(ITEM_PROBS[SETTINGS.size]) then
        add_quest(Level, "item", "treasure")
      end
    end

    -- bosses and exits

    if Level.boss_kind then
      add_quest(Level, "boss", Level.boss_kind)

    elseif keys == 2 then
      add_quest(Level, "key", "k_gold")
    end

    if Level.secret_exit then
      add_quest(Level, "exit", "secret")
    end

    add_quest(Level, "exit", "normal")
  end

  dump_levels()

  return level_list
end


----------------------------------------------------------------

GAME_FACTORIES["wolf3d"] = function()

  return
  {
    wolfy = true,

    plan_size = 7,
    cell_size = 7,
    cell_min_size = 3,

    caps = { blocky_items=true, blocky_doors=true,
             tiered_skills=true, elevator_exits=true,
             four_dirs=true, sealed_start=true,
           },

    ERROR_TEX  = WF_NO_TILE,
    ERROR_FLAT = 99, -- dummy
    SKY_TEX    = 77, -- dummy

    episodes = 6,
    level_func = wolf3d_get_levels,

    thing_nums = WF_THING_NUMS,
    monsters   = WF_MONSTERS,
    bosses     = WF_BOSSES,
    mon_give   = WF_MONSTER_GIVE,
    weapons    = WF_WEAPONS,

    pickups = WF_PICKUPS,
    pickup_stats = { "health", "bullet" },

    initial_model = WF_INITIAL_MODEL,

    quests  = WF_QUESTS,

    dm = {},

    combos    = WF_COMBOS,
    exits     = WF_EXITS,
    hallways  = WF_THEMES, -- not used

    doors     = WF_DOORS,
    key_doors = WF_KEY_DOORS,

    scenery   = WF_SCENERY,
    rooms     = WF_ROOMS,
    themes    = WF_THEMES,

    room_heights = { [128]=50 },
    space_range  = { 50, 90 },
    door_probs = { combo_diff=90, normal=20, out_diff=1 },
  }
end

