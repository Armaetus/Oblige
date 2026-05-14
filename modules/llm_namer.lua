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

function LLM_NAME.setup(self)
  module_param_up(self)
end

function LLM_NAME.get_some_info(self, lev)
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

  local info_str = ""
  local room_themes = {}
  local room_scores = 
  {
    outdoor_vol = 0,
    building_vol = 0,
    park_vol = 0,
    cave_vol = 0
  }
  local total_vol = 0

  for _,R in pairs(lev.rooms) do
    local tab


    if not R.is_outdoor then
      tab = table.copy(R.theme)

      table.name_up(tab)

      table.add_unique(room_themes, tab.name)
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
  end

  for factor,score in pairs(room_scores) do
    room_scores[factor] = score / total_vol
  end

  -- create the info strings for what kind rooms we have
  local classification
  classification = classify_ratio(room_scores.outdoor_vol)
  if classification then
    info_str = info_str .. "The map is " .. classification .. " outdoors. "
  end
  classification = classify_ratio(room_scores.building_vol)
  if classification then
    info_str = info_str .. "The map is " .. classification .. " indoors. "
  end
  classification = classify_ratio(room_scores.cave_vol)
  if classification then
    info_str = info_str .. "The map is " .. classification .. " a cave. "
  end
  classification = classify_ratio(room_scores.park_vol)
  if classification then
    info_str = info_str .. "The map is " .. classification .. " a park. "
  end

  info_str = info_str .. "\nRooms in the map have the following room themes: "
  for _,I in ipairs(room_themes) do
    info_str = info_str .. "*" .. I .."\n"
  end

  if room_scores.outdoor_vol > 0.33 then
    if lev.outdoor_theme then
      if lev.outdoor_theme == "snow" then
        info_str = info_str .. "The level has cold, snowy outdoors.\n"
      elseif lev.outdoor_theme == "sand" then
        info_str = info_str .. "The level has hot, sandy desert outdoors.\n"
      end
    end
  end

  if lev.liquid_usage ~= 0 then
    info_str = info_str .. "The level contains pools of " .. lev.liquid.name .. ".\n"
  end

  if lev.has_streets then
    info_str = info_str .. "There's a lot of city streets in the level."
  end

  if lev.preferred_wall_groups and room_scores.building_vol > 0.33 then
    info_str = info_str .. "The following prefab set is found throughout the level: "
    for prefab,prob in pairs(lev.preferred_wall_groups[lev.theme_name]) do
      info_str = info_str .. "* " .. prefab .. ", at " .. prob .. "x"
    end
  end

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
[[Generate a Doom map name.

Rules:
- 1 line only
- maximum 4 words
- no punctuation
- no explanation
- no extra text
- no quotes

Examples:
Iron Mausoleum
Frozen Reactor
Concrete Spiral
Ashen Transit

The following information is the level metadata for context.
Be creative and avoid using words from the metadata.
Use it only as context for a unique name.
]]..
level_data

    return ask(prompt,
    {
      temperature = 1.2,
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
    "Arrows represent stairs pointing to a destination, usually within the same area.\n"

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
