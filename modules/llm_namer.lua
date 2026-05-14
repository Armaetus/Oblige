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

function LLM_NAME.setup(self)

  module_param_up(self)

end

function LLM_NAME.do_it(self, LEVEL)

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
        '"num_predict":' .. num_predict ..
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

The following information is metadata for context.
Be creative and avoid using words from the metadata wholesale.
Use it only as context for a unique name.
]]..
level_data..
[[
]]

    return ask(prompt,
    {
      temperature = 0.9,
      num_predict = 12
    })
  end

  -- level metadata collector
  local function collect_level_data(level_tab)

    local info

    local cur_level = table.copy(level_tab)

    info = "Level theme: " .. cur_level.theme_name .. "\n"


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
