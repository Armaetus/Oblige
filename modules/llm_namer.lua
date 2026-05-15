------------------------------------------------------------------------
--  MODULE: LLM Name Generator
------------------------------------------------------------------------
--
--  Copyright (C) 2026 MsrSgtShooterPerson
--
--  This program is free software; you can redistribute it and/or
--  modify it under the terms of the GNU General Public License
--  as published by the Free Software Foundation; either version 2,
--  of the License, or (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
-------------------------------------------------------------------

LLM_NAME = { }

LLM_NAME.model = "llama3.1:8b"

LLM_NAME.endpoint = "http://127.0.0.1:11434/api/generate"

LLM_NAME.level_infos = {}

-- semantics translation table
LLM_NAME.semantics_grouping =
{
  low_gap2 = "low_gap",
  low_gap3 = "low_gap",
  low_gap4 = "low_gap",

  mid_band2 = "mid_band",

  lite2 = "lite1",

  torches1 = "torches",
  torches2 = "torches",
  torches4 = "torches",
  torches5 = "torches",
  torches6 = "torches",
  torches7 = "torches",
  torches9 = "torches",
  torches10 = "torches",
  torches11 = "torches",

  runes2 = "runes1",
  runes3 = "runes1",
  runes4 = "runes1",
  runes5 = "runes1",

  cross2 = "cross1",
  cross3 = "cross1",
  cross4 = "cross1",
  cross5 = "cross1",

  gtd_wall_tech_top_corner_light_set = "gtd_ribbed_lights",
  gtd_ribbed_lights_no3d = "gtd_ribbed_lights",
  gtd_ribbed_lights_slump = "gtd_ribbed_lights",
  gtd_ribbed_lights_slump_two_color = "gtd_ribbed_lights",
  gtd_ribbed_lights_very_blue = "gtd_ribbed_lights",

  gtd_ribbed_lights_tekmachine = "gtd_ribbed_lights_tekmachine",
  gtd_ribbed_lights_tekmachine_alt = "gtd_ribbed_lights_tekmachine",

  gtd_woodframe_green = "gtd_woodframe",
  gtd_woodframe_alt = "gtd_woodframe",
  gtd_woodframe_alt_green = "gtd_woodframe",

  gtd_generic_tek_grate_bottom_slope = "gtd_generic_tek_grate",
  gtd_generic_tek_grate_xit_machine = "gtd_generic_tek_grate",
  gtd_wall_grated_machines_epic = "gtd_generic_tek_grate",

  gtd_ind_modwall_2 = "gtd_ind_modwall_1",
  gtd_ind_modwall_3 = "gtd_ind_modwall_1",

  gtd_sunderfall_barred = "gtd_sunderfall",

  gtd_gothic_ceilwall_arch = "gtd_gothic_ceilwall",
  gtd_gothic_ceilwall_doublet_arch = "gtd_gothic_ceilwall",
  gtd_gothic_ceilwall_braced_arch = "gtd_gothic_ceilwall",
  gtd_gothic_ceilwall_xzibit_arch = "gtd_gothic_ceilwall",
  gtd_gothic_ceilwall_inner_framed_arch = "gtd_gothic_ceilwall",

  gtd_wall_quakish_insets = "gtd_modquake_set",

  gtd_wall_hell_mindscrew_skywall = "gtd_wall_hell_mindscrew",

  gtd_power_plant_red_set = "gtd_power_plant_set",

  gtd_computers_shawn = "gtd_computers",
  gtd_computers_compsta = "gtd_computers",
  gtd_comp_set_yellow_EPIC = "gtd_computers",
  gtd_comp_set_green_EPIC = "gtd_computers",
  gtd_comp_set_red_EPIC = "gtd_computers",
  gtd_comptil_plain_red = "gtd_computers",
  gtd_comptil_plain_green = "gtd_computers",
  gtd_comptil_plain_yellow = "gtd_computers",
  gtd_comptil_plain_purple = "gtd_computers",
  gtd_comptil_plain_blue = "gtd_computers",
  gtd_comptil_lite_red = "gtd_computers",
  gtd_comptil_lite_green = "gtd_computers",
  gtd_comptil_lite_yellow = "gtd_computers",
  gtd_comptil_lite_purple = "gtd_computers",
  gtd_comptil_lite_blue = "gtd_computers",

  dem_wall_commercial = "gtd_grocery",
  gtd_grocery_2 = "gtd_grocery",

  gtd_tall_glass_epic_yellow = "gtd_wall_churchy_glass",
  gtd_tall_glass_epic_orange = "gtd_wall_churchy_glass",
  gtd_tall_glass_epic_red = "gtd_wall_churchy_glass",
  gtd_tall_glass_epic_blue = "gtd_wall_churchy_glass",
  gtd_winglass_wall = "gtd_wall_churchy_glass",
  gtd_wall_gothic_bottom_glass = "gtd_wall_churchy_glass",

  armaetus_catacobm_wall_set = "gtd_wall_hell_ossuary",
  armaetus_catacombs_brown = "gtd_wall_hell_ossuary"

}

LLM_NAME.semantics =
{
  -- [[ WALL GROUPS ]]

  -- TECH --
  low_gap =
  {
    "narrow industrial spacing",
    "compressed architecture"
  },

  mid_band =
  {
    "layered industrial walls",
    "banded structural design"
  },

  lite1 =
  {
    "artificial lighting",
    "illuminated interiors"
  },

  torches =
  {
    "ritual lighting",
    "ominous flames",
    "torchlit interiors"
  },

  gtd_wall_urban_storage =
  {
    "storage infrastructure",
    "industrial warehouses",
    "cargo facilities"
  },

  gtd_DMV_set =
  {
    "bureaucratic office halls",
    "sterile civic waiting rooms",
    "government processing offices"
  },

  gtd_full_storage =
  {
    "packed storage sectors",
    "industrial stockpiles"
  },

  gtd_wall_server_room =
  {
    "server facilities",
    "computer infrastructure",
    "data processing systems"
  },

  gtd_data_center =
  {
    "massive data centers",
    "digital infrastructure",
    "machine archives"
  },

  gtd_computers =
  {
    "computerized facilities",
    "industrial control systems",
    "surveillance infrastructure",
    "machine monitoring stations"
  },

  gtd_writhing_mass =
  {
    "hellified organic masses",
    "infernal overgrowth"
  },

  gtd_wall_sewer =
  {
    "sewer infrastructure",
    "industrial drainage systems",
    "waste processing"
  },

  gtd_water_purifier =
  {
    "water treatment systems",
    "purification facilities"
  },

  gtd_nukage_aquarium =
  {
    "toxic containment systems",
    "industrial chemical reservoirs"
  },

  gtd_toilet_gallery =
  {
    "industrial sanitation systems",
    "vast plumbing infrastructure",
    "sterile maintenance facilities"
  },

  gtd_modquake_set =
  {
    "heavy brutalist architecture",
    "massive industrial geometry"
  },

  gtd_ribbed_lights =
  {
    "ribbed illuminated machinery",
    "glowing industrial structures"
  },

  gtd_ribbed_lights_tekmachine =
  {
    "advanced machinery",
    "mechanized infrastructure"
  },

  cran_bunkbeds =
  {
    "sleeping quarters",
    "common barracks",
    "staff bedrooms"
  },

  gtd_craneo_bank_set =
  {
    "reinforced bank vaults",
    "financial storage facilities",
    "secure transaction halls"
  },

  gtd_mining_set =
  {
    "mining infrastructure",
    "industrial excavation",
    "resource extraction"
  },

  gtd_power_plant_set =
  {
    "power generation facilities",
    "energy infrastructure",
    "industrial reactors"
  },

  gtd_door_storage =
  {
    "industrial door storage chambers",
    "door stockpiles",
    "modular door depots"
  },

  gtd_fireblu_where_its_made =
  {
    "surreal technology",
    "alien industrial systems",
    "unstable dimensional machinery"
  },

  gtd_tech_barrier_tek =
  {
    "security barriers",
    "containment structures",
    "reinforced checkpoints"
  },

  gtd_generic_tek_grate =
  {
    "grate-protected machines",
    "exposed industrial systems"
  },

  gtd_sunderfall =
  {
    "cascading industrial runoff",
    "overflow drainage channels",
    "vertical waste conduits"
  },

  gtd_lavafall =
  {
    "exposed magma falls",
    "flowing lava openings"
  },

  gtd_wall_cafeteria_set =
  {
    "industrial mess halls",
    "communal dining sectors",
    "corporate food courts"
  },

  gtd_wall_hydroponics =
  {
    "hydroponics laboratory",
    "climate-controlled interior farm",
    "high-tech plant nursery"
  },

  gtd_wall_tech_oven =
  {
    "massive thermal exchangers",
    "industrial heating systems",
    "reactor cooling infrastructure"
  },

  gtd_wall_tech_freeze =
  {
    "industrial freezing units",
    "ice manufacturing plant",
    "cryogenics laboratory"
  },

  gtd_wall_air_vents =
  {
    "vast ventilation systems",
    "industrial air ducts",
    "labyrinthine maintenance shafts"
  },

  gtd_wall_of_guns =
  {
    "weapons storage facility",
    "armory depot",
    "gun displays"
  },

  gtd_bathwater =
  {
    "gamer girl bath water production facility",
    "Instagram model's bath water interment unit"
  },

  gtd_mscottpaper =
  {
    "corporate office complexes",
    "industrial paper processing",
    "administrative workspaces"
  },



  -- URBAN
  gtd_woodframe =
  {
    "wooden panel walls",
    "ornate wood mouldings",
    "wood wainscoting"
  },

  gtd_wall_urban_cement_frame = 
  {
    "concrete pillar corridors",
    "cement commercial backrooms"
  },

  gtd_ind_modwall_1 = {
    "metallic girders",
    "silver support frames"
  },

  gtd_greywall_1 =
  {
    "bleak concrete corridors",
    "utilitarian industrial walls",
    "sterile cement structures"
  },

  cran_bloodtubes_set =
  {
    "experimental containment vats",
    "biological suspension chambers",
    "creature stasis facilities"
  },

  gtd_gothic_ceilwall =
  {
    "gothic arched walls",
    "medieval vaulted chambers",
    "cathedral ceilings"
  },

  gtd_prison_A =
  {
    "jail facility",
    "interment structure",
    "prison cell block"
  },

  gtd_furnace_water =
  {
    "boiler facility",
    "centralized heating systems",
    "water heating units"
  },

  gtd_grocery =
  {
    "massive supermarket",
    "department store",
    "general goods grocery"
  },

  gtd_wall_arcade =
  {
    "arcade center",
    "gaming facility"
  },

  gtd_library_tall =
  {
    "towering archives",
    "forbidden libraries",
    "vaulted repositories of knowledge"
  },

  gtd_pools = 
  {
    "bleak recreational swimming pools",
    "eerie maze-like pool facility"
  },

  dem_wall_hospital =
  {
    "clinical patient chambers",
    "ecovery sick bays",
    "advanced medical care center"
  },



  -- HELL
  runes1 =
  {
    "hellish rune carvings",
    "infernal symbols",
    "ritualistic markings"
  },

  cross2 =
  {
    "desecrated sanctuaries",
    "blasphemous shrines",
    "inverted religious iconography"
  },

  gtd_furnace = 
  {
    "incinerator furnaces",
    "cremation building"
  },

  gtd_furnace_face =
  {
    "tormented soul furnaces",
    "spiritual oubliettes",
    "infernal containment chambers"
  },

  gtd_wall_hell_ossuary =
  {
    "bone ossuaries",
    "catacomb labyrinths",
    "ancient mausoleums",
    "crypt networks"
  },

  gtd_wall_marbface =
  {
    "marble gargoyle sculptures",
    "hellish relief statues"
  },

  gtd_wall_hell_mindscrew =
  {
    "Escheresque dimensional breaches",
    "non-Euclidean geometric hollows"
  },

  gtd_wall_churchy_glass =
  {
    "tall cathedral glass walls",
    "stained glass halls",
    "grand church windows"
  },

  gtd_wall_candles = 
  {
    "candlestand chambers",
    "candelabra hallways"
  }

  -- layout

  -- room themes
}

function LLM_NAME.setup(self)
  module_param_up(self)
end

function LLM_NAME.get_some_info(self, lev)

  local function get_semantic(v)
    local term = v

    if LLM_NAME.semantics_grouping[term] then
      term = LLM_NAME.semantics_grouping[term]
    end

    if LLM_NAME.semantics[term] then
      term = rand.pick(LLM_NAME.semantics[term])
    end

    return term
  end

  local function classify_ratio(ratio)
    if ratio > 0.99 then
      return "entirely"
    elseif ratio > 0.8 then
      return "almost entirely"
    elseif ratio > 0.6 then
      return "mostly"
    elseif ratio > 0.4 then
      return "roughly half"
    end

    return nil
  end

  local function openness_description(v)

    if v < 0.10 then
      return rand.pick
      {
        "claustrophobic",
        "cramped",
        "suffocating",
        "oppressive",
        "extremely confined"
      }

    elseif v < 0.20 then
      return rand.pick
      {
        "tight",
        "narrow",
        "confined",
        "compressed",
        "dense"
      }

    elseif v < 0.30 then
      return rand.pick
      {
        "compact",
        "structured",
        "controlled",
        "segmented"
      }

    elseif v < 0.40 then
      return rand.pick
      {
        "balanced",
        "moderately open",
        "mixed",
        "layered"
      }

    elseif v < 0.50 then
      return rand.pick
      {
        "open",
        "spacious",
        "wide",
        "expansive"
      }

    elseif v < 0.65 then
      return rand.pick
      {
        "sprawling",
        "broad",
        "vast",
        "sweeping"
      }

    else
      return rand.pick
      {
        "massive",
        "monumental",
        "cavernous",
        "boundless",
        "immense"
      }
    end
  end


  local info_str = 
    "The following information is the level metadata for context. " ..
    "Be creative and avoid using words from the metadata. " ..
    "Use it only as context for a unique name.\n"

  local room_themes = {}
  local room_scores = 
  {
    outdoor_vol = 0,
    building_vol = 0,
    park_vol = 0,
    cave_vol = 0
  }
  local total_vol = 0
  local shape_rules = {}
  local level_openness = 0

  -- grab some examples names from our generator
  info_str = info_str .. "Examples from our internal generator:\n"
  for i=1 , 5 do
    info_str = info_str .. Naming_grab_one(lev.name_class) .. "\n"
  end
  info_str = info_str .. "\n"

  -- iterate through rooms to collect some data
  for _,R in pairs(lev.rooms) do

    -- collect the used room themes    
    local tab
    if not R.is_outdoor then
      local tab_name
      tab = table.copy(R.theme)

      for name,info in pairs(tab) do
        if type(info) == "table" then
          tab_name = name
        end
      end

      table.add_unique(room_themes, tab_name)
    end

    -- collect the used shape rules
    if R.absurd_shapes then
      for shape,_ in pairs(R.absurd_shapes) do
        table.add_unique(shape_rules, shape)
      end
    end

    -- count the volume of all rooms arranged by kind
    total_vol = total_vol + R.svolume
    if R.is_outdoor then 
      room_scores.outdoor_vol = room_scores.outdoor_vol + R.svolume
    end
    if R:get_env() == "building" then
      room_scores.building_vol = room_scores.building_vol + R.svolume
    end
    if R:get_env() == "park" then
      room_scores.park_vol = room_scores.park_vol + R.svolume
    end
    if R:get_env() == "cave" then
      room_scores.cave_vol = room_scores.cave_vol + R.svolume
    end

    level_openness = level_openness + R.openness
  end

  for factor,score in pairs(room_scores) do
    room_scores[factor] = score / total_vol
  end

  -- create the info strings for what kind rooms we have
  local classification
  classification = classify_ratio(room_scores.outdoor_vol)
  if classification then
    info_str = info_str .. "The map is " .. classification .. " outdoors.\n"
  end
  classification = classify_ratio(room_scores.building_vol)
  if classification then
    info_str = info_str .. "The map is " .. classification .. " indoors.\n"
  end
  classification = classify_ratio(room_scores.cave_vol)
  if classification then
    info_str = info_str .. "The map is " .. classification .. " a cave.\n"
  end
  classification = classify_ratio(room_scores.park_vol)
  if classification then
    info_str = info_str .. "The map is " .. classification .. " natural terrain.\n"
  end

  if #shape_rules > 0 then
    info_str = info_str .. "The map's layout is made of the following shape grammar rules with the following names: "
    for _,rule in pairs(shape_rules) do
      info_str = info_str .. "* " .. rule .. "\n"
    end
  end

  if room_scores.outdoor_vol < 0.5 then
    info_str = info_str .. "\nRooms in the map have the following room themes: "
    for _,I in ipairs(room_themes) do
      info_str = info_str .. "*" .. get_semantic(I) .."\n"
    end
  end

  if lev.is_dark then
    info_str = info_str .. "The level takes place during a dark night.\n"
  end

  level_openness = level_openness/#lev.rooms
  info_str = info_str .. "The map has a " .. openness_description(level_openness) .. " layout.\n"

  if room_scores.outdoor_vol > 0.33 then
    if lev.outdoor_wall_group and lev.outdoor_wall_group ~= "PLAIN" then
      info_str = info_str .. "The outdoors use the " .. lev.outdoor_wall_group .. " prefab set.\n"
    end
  end

  if room_scores.outdoor_vol > 0.5 then
    if lev.outdoor_theme then

      if lev.outdoor_theme == "snow" then

        info_str = info_str ..
          rand.pick
          {
            "The level has cold snowy outdoors.\n",
            "The outdoors are frozen and snow covered.\n",
            "The map takes place in a frigid snowy environment.\n",
            "The exterior areas are icy and windswept.\n",
            "The level features bleak frozen outdoors.\n"
          }

      elseif lev.outdoor_theme == "sand" then

        info_str = info_str ..
          rand.pick
          {
            "The level has hot sandy desert outdoors.\n",
            "The exterior areas are dry and desertlike.\n",
            "The map takes place in a scorching desert environment.\n",
            "The outdoors are dusty and sun blasted.\n",
            "The level features arid sandy terrain.\n"
          }
      end
    end
  end

  if lev.liquid_usage ~= 0 then
    info_str = info_str .. "The level contains  " ..
    rand.pick({"pools","open pits","basins","rivers","channels","reservoirs"}) ..
    " of " .. lev.liquid.name .. ".\n"
  end

  if lev.has_streets then
    info_str = info_str .. "There's a lot of city streets in the level."
  end

  if lev.preferred_wall_groups and room_scores.building_vol > 0.33 then
    info_str = info_str .. "The following prefab set is found throughout the level: "
    for prefab,prob in pairs(lev.preferred_wall_groups[lev.theme_name]) do
      info_str = info_str .. "* " .. get_semantic(prefab) .. "\n"
    end
  end

  info_str = info_str .. "The original map name is '" .. lev.description .. "' and is only related as it is a " .. lev.theme_name ..  "-themed name.\n"

  info_str = info_str .. "If the original map name sounds vaguely applicable enough given the context and/or just sounds plain cool, just write the same name!\n"

  LLM_NAME.level_infos[lev.id] = info_str
end

function LLM_NAME.do_it()

  -- rolling hash to convert OB_CONFIG.seed
  -- to numbers
  local function seed_to_number(seed)

    local hash = 0
    local prime = 31

    seed = tostring(seed)

    for i = 1, #seed do
      local c = seed:byte(i)
      hash = (hash * prime + c) % 2147483647
    end

    return hash
  end

  -- escape from JSON city
  local function escape_json(str)
    str = str:gsub("\\", "\\\\")
    str = str:gsub('"', '\\"')
    str = str:gsub("\n", "\\n")
    str = str:gsub("\r", "\\r")

    return str
  end

  -- query structure
  local function query(prompt, options)

    options = options or {}

    local temperature = options.temperature or 0.3
    local num_predict = options.num_predict or 8

    local json =
      '{' ..
      '"model":"' .. LLM_NAME.model .. '",' ..
      '"prompt":"' .. escape_json(prompt) .. '",' ..
      '"stream":false,' ..
      --'"raw":true,' ..
      '"options":{' ..
        '"temperature":' .. temperature .. ',' ..
        '"num_predict":' .. num_predict .. ',' ..
        '"seed":' .. seed_to_number(OB_CONFIG.seed) ..
      '}' ..
      '}'

    -- write payload file
    local file = io.open("ollama_payload.json", "w")

    if not file then
      gui.printf("LLM Namer: Failed to create payload file.\n")
      return nil
    end

    file:write(json)
    file:close()

    local cmd =
      'curl --max-time 30 -s ' ..
      '-H "Content-Type: application/json" ' ..
      LLM_NAME.endpoint ..
      ' -d @ollama_payload.json'

    gui.printf("\nCommand:\n\n")
    gui.printf(cmd)
    gui.printf("\n")

    local pipe = io.popen(cmd)

    if not pipe then
      gui.printf("LLM Namer: Failed to open stream.\n")
      return nil
    end

    local result = pipe:read("*a")

    pipe:close()

    gui.printf("LLM Namer: Raw response:\n%s\n", result)

    return result
  end

  -- extract response from JSON... response
  local function extract_response(json)

    if not json then
      return nil
    end

    local response =
      json:match('"response"%s*:%s*"(.-)"')

    if not response then
      return nil
    end

    response = response:gsub('\\"', '"')
    response = response:gsub("\\n", "\n")
    response = response:gsub("\\r", "\r")

    -- hard cleanup
    response = response:match("^[^\r\n`]+")

    response = response:gsub("^%s+", "")
    response = response:gsub("%s+$", "")

    return response
  end

  -- perform a query 
  local function ask(prompt, options)
    local raw = query(prompt, options)

    local response = extract_response(raw)

    gui.printf("LLM Namer: Parsed response:\n" .. response .. "\n")

    if not response then
      return nil
    end

    response = response:gsub("^%s+", "")
    response = response:gsub("%s+$", "")

    return response
  end

  -- main name generator capsule
  local function generate_level_name(level_data)

    local prompt =
[[Generate a Doom map name that is evocative, mythic, and cinematic.
Feel free to use metaphor, mood, or unusual imagery.

Rules:
- 1 line only
- maximum 4 words
- no punctuation
- no explanation
- no extra text
- no quotes
]]..
level_data

    return ask(prompt,
    {
      temperature = 1.0,
      num_predict = 12
    })
  end

  -- level metadata collector
  local function collect_level_data(level_tab)

    local info

    local cur_level = table.copy(level_tab)


    local ascii_map = cur_level.ascii_map

    info = "Level theme: " .. cur_level.theme_name .. "\n"..
    "The following is an ASCII text map of the level.\n\n"..
    ascii_map .. "\n\n"..
    "Each character represents a grid space.\n"..
    "Small letters refer to whole rooms. Capital letters refer to outdoors.\n"..
    "Letters further in the alphabet represent rooms that are further from the starting position.\n"..
    "Letters will just repeat if it reaches the end of the alphabet.\n"..
    "Some rooms in the ASCII map may occasionally show diagonals.\n"..
    "Arrows represent stairs pointing to a destination, usually within the same area.\n"..
    "Try to infer a description of the layout based on the ASCII map too."

    -- get other info
    info = info .. LLM_NAME.level_infos[cur_level.id]


    return info

  end

  if PARAM.bool_llm_namer == 1 then


    for _,epi in pairs(GAME.episodes) do
      for _,L in pairs(epi.levels) do
        local level_data = collect_level_data(L)
        local name = generate_level_name(level_data)

        if name then
          gui.printf("LLM Namer: Level name '" .. L.description .. "' substituted with '" .. name .. "'!\n")
          L.description = name
        end
      end
    end
  end
end

----------------------------------------------------------------

OB_MODULES["llm_namer"] =
{
  name = "llm_namer",

  label = _("LLM Name Generator"),

  where = "experimental",
  priority = 5,

  tooltip = _("Genarates level names using an LLM."),

  hooks =
  {
    setup = LLM_NAME.setup,
    end_level = LLM_NAME.get_some_info,
    pre_all_done = LLM_NAME.do_it
  },

  options =
  {

    {
      name = "bool_llm_namer",
      label=_("LLM Name Generator"),
      valuator = "button",
      default = 1,
      tooltip = _("Genarates a context-aware level name via LLM."),
      longtip = _("Uses Ollama to generate a name for a level by sending level metadata to Ollama. " ..
        "Default model is llama3.1:8b. Using a different model or LLM platform requires modification of the script. " ..
        "To use this, just download Ollama and llama3.1:8b and keep it running all at default settings.\n\n" ..
        "This module uses Lua io:popen to access cURL, and may cause CMD to briefly appear. This is normal behavior.\n\n" ..
        "The module DOES NOT SEND DATA outside of your PC. " ..
        "This module will not work if you do not have libcurl as it communicates in RESTful API style.\n\n"),
      priority = 100,
    },
  }
}
