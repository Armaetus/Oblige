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

LLM_NAME.test_endpoint = "http://127.0.0.1:11434/api/tags"

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
  torches8 = "torches",
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
  armaetus_catacombs_brown = "gtd_wall_hell_ossuary",

  gtd_wall_hell_engraving_1 = "gtd_wall_marbface",
  gtd_wall_hell_engraving_2 = "gtd_wall_marbface",
  gtd_wall_hell_engraving_3 = "gtd_wall_marbface",
  gtd_wall_hell_engraving_dark = "gtd_wall_marbface",
  gtd_wall_hell_engraving_arch = "gtd_wall_marbface",
  gtd_wall_hell_engraving_top_band = "gtd_wall_marbface",

  gtd_generic_artsy_bedazzled = "liminal_space",
  gtd_generic_alt_colors = "liminal_space",
  gtd_generic_mid_band = "liminal_space",
  gtd_generic_artsy_center_braced_ind = "liminal_space",
  gtd_generic_artsy_step1_banded = "liminal_space",
  gtd_generic_artsy_slope_y_inset = "liminal_space",
  gtd_generic_artsy_base_braced = "liminal_space",
  gtd_generic_artsy_sloped_bump = "liminal_space",
  gtd_generic_small_lite = "liminal_space",
  gtd_generic_artsy_lite_box = "liminal_space",
  gtd_generic_artsy_chequered = "liminal_space",
  gtd_generic_ceilwall = "liminal_space",
  gtd_generic_ceilwall_2 = "liminal_space",
  gtd_generic_ceilwall_3 = "liminal_space",
  gtd_generic_ceilwall_silver_frame = "liminal_space",
  gtd_generic_ceilwall_double_silver_frame = "liminal_space",

  gtd_wall_lit_h_window_tall_brown = "gtd_wall_lit_h_window_tall_gray",


  -- liquids
  otex_nukage = "nukage",
  otex_poop = "slime",

  -- room themes
  tech_Doom3_grey_hulls = "tech_Shiny",
  tech_Doom3_brown_hulls = "tech_VeryBrown"
}

LLM_NAME.semantics =
{
--[[ PRIMARY THEMES]]
  tech =
  {
    "The level evokes a foreboding industrial megastructure.",
    "The setting resembles a vast technological installation.",
    "The level feels mechanical, artificial, and industrial.",
    "The environment suggests a decaying high-tech complex.",
    "The level has the atmosphere of a massive engineered facility.",
    "The setting feels like a machine-built industrial labyrinth.",
    "The level resembles an abandoned technological superstructure.",
    "The environment carries a bleak industrial science-fiction tone.",
    "The setting feels synthetic, metallic, and heavily engineered.",
    "The level evokes an immense industrial machine world."
  },

  urban =
  {
    "The level resembles a sprawling urban structure.",
    "The setting evokes a decaying cityscape.",
    "The environment feels inhabited, civic, and architectural.",
    "The level has the atmosphere of a deteriorating metropolitan complex.",
    "The setting resembles abandoned commercial infrastructure.",
    "The level feels grounded, urbanized, and human-built.",
    "The environment suggests dense interconnected city structures.",
    "The setting evokes a bleak concrete metropolis.",
    "The level resembles forgotten urban infrastructure.",
    "The environment carries the atmosphere of a collapsing city."
  },

  hell =
  {
    "The level evokes an infernal and corrupted realm.",
    "The setting feels ancient, hostile, and ritualistic.",
    "The environment resembles a hellish labyrinth.",
    "The level carries a nightmarish supernatural atmosphere.",
    "The setting suggests demonic architecture fused with ruin.",
    "The level feels cursed, oppressive, and otherworldly.",
    "The environment evokes infernal catacombs and sacrificial halls.",
    "The setting resembles a corrupted underworld domain.",
    "The level carries a sinister and occult tone.",
    "The environment feels mythic, hostile, and hellish."
  },

  snow =
  {
    "The exterior is frozen and snow covered.\n",
    "The map takes place in a frigid snowy environment.\n",
    "The outdoors are icy and windswept.\n"
  },

  sand =
  {
    "The map takes place in a scorching desert environment.\n",
    "The outdoors are dusty and sun blasted.\n",
    "The exterior is dry and desertlike.\n"
  },

--[[ WALL GROUPS ]]

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
    "industrial stockpiles",
    "overpacked warehouses"
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
    "gamer girl bath water production machines",
    "Instagram model's bath water interment units"
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
    "hellish relief statues",
    "eerie demonic stone figures"
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
  },

  gtd_wall_lit_h_window_tall_gray =
  {
    "bare warehouse spaces",
    "abandoned factory floors",
    "emptied industrial chambers"
  },

  liminal_space =
  {
    -- pure liminality / void tone
    "liminal, in-between architectural spaces",
    "spaces that feel abandoned yet maintained",
    "transitional environments with unclear purpose",
    "quiet corridors between functional zones",

    -- aesthetic uncanny
    "hauntingly sterile interior spaces",
    "strangely elegant empty corridors",
    "uncannily clean and unoccupied halls",
    "beautiful but unsettling architectural voids",

    -- industrial liminality
    "unfinished industrial corridors",
    "maintenance spaces between major systems",
    "service corridors with no clear destination",
    "backstage infrastructure spaces",

    -- spatial dislocation
    "disorienting but orderly architectural interiors",
    "spaces that feel partially constructed or erased",
    "interior zones without narrative function",
    "hallways that feel like memory fragments",

    -- emotional neutrality
    "quiet, unoccupied structural interiors",
    "empty but structured architectural environments",
    "minimal, non-descriptive interior spaces"
  },


--[[LAYOUT (shape rules)]]

--[[ROOM THEMES]]
  -- TECH
  tech_Doom3_blue_hulls =
  {
    "cold blue industrial plating",
    "futuristic armored hulls",
    "sterile blue machinery"
  },

  tech_Doom3_lime_green_plates =
  {
    "acidic green machinery",
    "reactor-like plating",
    "hazard-tinted industrial surfaces"
  },

  tech_Doom3_all =
  {
    "harsh futuristic industry",
    "cold aerospace development facilities",
    "heavy sci-fi infrastructure"
  },

  tech_Metal =
  {
    "metallic industrial structures",
    "steel-plated corridors",
    "heavy machine architecture"
  },

  tech_deimosRoom =
  {
    "Deimos-inspired research chambers",
    "retro sci-fi interiors",
    "classic techbase rooms"
  },

  tech_Doom3_green_hulls =
  {
    "green-tinted machine hulls",
    "military industrial plating",
    "reactor infrastructure"
  },

  tech_VeryGray =
  {
    "sterile gray architecture",
    "ashen industrial corridors",
    "monolithic concrete-metal interiors"
  },

  tech_VeryBrown =
  {
    "aged industrial walls",
    "rusted brown machinery",
    "weathered tech infrastructure"
  },

  tech_wood_comp =
  {
    "wood-paneled computer facilities",
    "retro office technology",
    "corporate machine interiors"
  },

  tech_darkBronze =
  {
    "dark bronze machinery",
    "aged metallic infrastructure",
    "oxidized industrial halls"
  },

  tech_Sladwall =
  {
    "ribbed industrial walls",
    "heavy reinforced paneling",
    "retro techbase geometry"
  },

  tech_Tekgren =
  {
    "green-tinted machinery",
    "hazard-striped industrial sectors",
    "toxic technological infrastructure"
  },

  tech_GrayMet =
  {
    "gray metal corridors",
    "industrial steel interiors",
    "cold mechanical hallways"
  },

  tech_VeryTekky =
  {
    "dense technological infrastructure",
    "hyper-industrial interiors",
    "machine-dominated architecture"
  },

  tech_Doom3_flesh_forge =
  {
    "cybernetic flesh foundries",
    "hell-corrupted machinery",
    "biomechanical industrial systems"
  },

  tech_Shiny =
  {
    "polished industrial surfaces",
    "reflective metallic corridors",
    "sterile glossy machinery"
  },

  tech_beigetownTech =
  {
    "beige retro-futurist interiors",
    "corporate industrial architecture",
    "aged office-tech structures"
  },

  tech_dk_green_tech =
  {
    "dark green machinery",
    "military industrial systems",
    "cold reactor infrastructure"
  },

  tech_redFloorsBrownWalls =
  {
    "brown industrial interiors",
    "retro machine corridors",
    "aged technological sectors"
  },

  tech_Computers =
  {
    "computerized infrastructure",
    "server-filled chambers",
    "control system interiors"
  },

  tech_Gray =
  {
    "gray industrial complexes",
    "neutral metallic corridors",
    "sterile machine architecture"
  },

  tech_VeryBluey =
  {
    "deep blue technological interiors",
    "cold illuminated machinery",
    "blue-lit industrial halls"
  },

  tech_HeavyMetal =
  {
    "heavy industrial machinery",
    "massive steel structures",
    "dense mechanical infrastructure"
  },

  tech_silver_grate =
  {
    "grated metallic walkways",
    "silver industrial meshwork",
    "ventilated machine corridors"
  },

  tech_copper_steampunk =
  {
    "copper industrial machinery",
    "steam-powered mechanisms",
    "Victorian mechanical infrastructure"
  },

  tech_Starbase =
  {
    "orbital station interiors",
    "spacefaring infrastructure",
    "stellar military architecture"
  },

  tech_Cave_generic =
  {
    "excavated industrial caverns",
    "machine-dug cave systems",
    "subterranean facilities"
  },

  tech_aww2 =
  {
    "retro industrial warfare architecture",
    "military-inspired facilities",
    "aged bunker infrastructure"
  },

  tech_VeryShiny =
  {
    "highly polished machinery",
    "gleaming metallic corridors",
    "sterile reflective interiors"
  },

  tech_AITextures =
  {
    "alien synthetic surfaces",
    "procedural machine textures",
    "uncanny digital architecture"
  },

  tech_iStuff =
  {
    "sleek consumer technology",
    "minimalist tech interiors",
    "high-end electronic infrastructure"
  },

  tech_Cement =
  {
    "concrete industrial facilities",
    "utilitarian machine structures",
    "brutalist technological halls"
  },

  tech_bumblebee =
  {
    "yellow-black hazard machinery",
    "industrial warning coloration",
    "striped reactor infrastructure"
  },

  tech_wood_lab =
  {
    "wood-paneled laboratories",
    "academic research interiors",
    "retro scientific facilities"
  },

  tech_goth_tech =
  {
    "gothic cybernetic halls",
    "cathedral-like machinery",
    "religious industrial architecture"
  },

  tech_HighContrast =
  {
    "stark illuminated machinery",
    "high-contrast industrial halls",
    "dramatic technological lighting"
  },

  tech_bunker =
  {
    "fortified military bunkers",
    "hardened underground facilities",
    "defensive industrial sectors"
  },

  tech_cableSocketCatacombs =
  {
    "cable-filled underground tunnels",
    "electrical maintenance catacombs",
    "dense wiring infrastructure"
  },

  -- URBAN
  urban_BrownyMcBrownston =
  {
    "brownstone architecture",
    "aged urban housing",
    "weathered residential blocks"
  },

  urban_Cement =
  {
    "concrete city structures",
    "urban brutalist architecture",
    "cement corridors"
  },

  urban_Stucco =
  {
    "stucco-covered buildings",
    "Mediterranean urban walls",
    "aged plaster architecture"
  },

  urban_RedBrick =
  {
    "red brick city blocks",
    "industrial-era buildings",
    "aged masonry streets"
  },

  urban_ShadesOfGrey =
  {
    "gray urban corridors",
    "monochrome city structures",
    "bleak metropolitan interiors"
  },

  urban_darkGrimyIndustrial =
  {
    "grimy industrial districts",
    "polluted factory sectors",
    "decaying urban machinery"
  },

  urban_Panel =
  {
    "paneled office interiors",
    "modular wall systems",
    "commercial urban architecture"
  },

  urban_Doom3 =
  {
    "harsh sci-fi urban interiors",
    "industrial city structures",
    "retro-futurist facilities"
  },

  urban_Doom3_white_panels =
  {
    "white-paneled interiors",
    "sterile corporate structures",
    "clean futuristic offices"
  },

  urban_ReisalBricks =
  {
    "ornate brickwork",
    "decorative masonry halls",
    "elegant urban construction"
  },

  urban_returnToCastleWolf =
  {
    "military fortress interiors",
    "WW2-inspired architecture",
    "stone military compounds"
  },

  urban_blueBrick =
  {
    "blue-tinted brick structures",
    "cold urban masonry",
    "painted industrial buildings"
  },

  urban_wood_comp =
  {
    "wood-paneled offices",
    "retro commercial interiors",
    "corporate administrative halls"
  },

  urban_computerCatacombs =
  {
    "computer-filled underground offices",
    "server-lined city infrastructure",
    "digital maintenance tunnels"
  },

  urban_iStuff =
  {
    "sleek consumer interiors",
    "high-end commercial spaces",
    "minimalist electronics stores"
  },

  urban_MoreWood =
  {
    "heavy wooden architecture",
    "timber-framed interiors",
    "warm residential halls"
  },

  urban_greenFloorsGreyWalls =
  {
    "institutional interiors",
    "sterile office corridors",
    "retro corporate buildings"
  },

  urban_Doom3_wood =
  {
    "wood-paneled sci-fi interiors",
    "retro-futurist office halls",
    "corporate tech architecture"
  },

  urban_Stone =
  {
    "stone urban structures",
    "masonry corridors",
    "heavy civic architecture"
  },

  urban_brownyMcBrown =
  {
    "aged brown interiors",
    "weathered commercial architecture",
    "rustic urban hallways"
  },

  urban_kievan_rus =
  {
    "eastern medieval architecture",
    "orthodox-inspired halls",
    "ancient Slavic interiors"
  },

  urban_evil_mansion =
  {
    "haunted mansion interiors",
    "decadent manor halls",
    "gloomy aristocratic chambers"
  },

  urban_new_york_art_deco =
  {
    "art deco skyscraper interiors",
    "ornate metropolitan halls",
    "1930s urban luxury"
  },

  urban_Brick =
  {
    "brick industrial corridors",
    "masonry urban structures",
    "dense city architecture"
  },

  urban_silver_grate =
  {
    "industrial metal walkways",
    "grated maintenance corridors",
    "urban machine infrastructure"
  },

  urban_bunker =
  {
    "civil defense bunkers",
    "fortified underground shelters",
    "concrete survival infrastructure"
  },

  urban_Wood =
  {
    "wooden urban interiors",
    "timber residential halls",
    "aged wooden structures"
  },

  urban_beigetownTech =
  {
    "retro office technology",
    "beige corporate interiors",
    "aged administrative facilities"
  },

  -- HELL
  hell_cableSocketCatacombs =
  {
    "infernal machine catacombs",
    "cable-lined abyssal tunnels",
    "hellish industrial underworld"
  },

  hell_evil_mansion =
  {
    "haunted infernal mansions",
    "cursed aristocratic halls",
    "decadent demonic estates"
  },

  hell_GrayMarble =
  {
    "ashen marble halls",
    "cold infernal temples",
    "gray demonic architecture"
  },

  hell_rocky_ruins =
  {
    "ruined volcanic stonework",
    "collapsed infernal ruins",
    "ancient shattered temples"
  },

  hell_Wood =
  {
    "charred wooden chambers",
    "burnt ritual halls",
    "aged occult interiors"
  },

  hell_greenBrick =
  {
    "corrupted green masonry",
    "sickly infernal brickwork",
    "tainted demonic structures"
  },

  hell_blackened =
  {
    "burnt infernal ruins",
    "ash-covered chambers",
    "blackened hell architecture"
  },

  hell_babylonian =
  {
    "ancient ziggurat architecture",
    "mesopotamian ritual halls",
    "forgotten desert temples"
  },

  hell_fleshcraft =
  {
    "living flesh architecture",
    "organic nightmare structures",
    "mutated biomechanical halls"
  },

  hell_Doom3_brick =
  {
    "harsh infernal brickwork",
    "martian hell architecture",
    "industrial demonic corridors"
  },

  hell_green_tk =
  {
    "green infernal machinery",
    "toxic demonic technology",
    "corrupted reactor halls"
  },

  hell_AztecClay =
  {
    "ancient clay temples",
    "ritualistic stone pyramids",
    "bloodstained jungle ruins"
  },

  hell_Doom3_martian_brick =
  {
    "martian infernal masonry",
    "red industrial hellscape",
    "alien demonic ruins"
  },

  hell_fireycave =
  {
    "flaming cavern systems",
    "volcanic infernal caves",
    "firelit abyssal tunnels"
  },

  hell_Viney =
  {
    "overgrown demonic ruins",
    "vine-covered temples",
    "decaying occult structures"
  },

  hell_CementCautionless =
  {
    "abandoned concrete hellscapes",
    "derelict industrial ruins",
    "forgotten demonic facilities"
  },

  hell_CementCautionlines =
  {
    "hazard-marked infernal industry",
    "warning-striped hell facilities",
    "corrupted industrial sectors"
  },

  hell_copper_steampunk =
  {
    "infernal steam machinery",
    "brass occult mechanisms",
    "demonic industrial engines"
  },

  hell_metal =
  {
    "iron infernal halls",
    "metallic demon fortresses",
    "steel hell architecture"
  },

  hell_Panel =
  {
    "paneled infernal interiors",
    "structured demonic halls",
    "modular hell corridors"
  },

  hell_Stone =
  {
    "ancient stone temples",
    "infernal masonry halls",
    "abyssal rock structures"
  },

  hell_Cave_Hot =
  {
    "molten cavern systems",
    "volcanic hell tunnels",
    "lava-scarred abyss"
  },

  hell_crimson =
  {
    "blood-red infernal halls",
    "crimson demonic temples",
    "scarlet abyssal architecture"
  },

  hell_Cave_generic =
  {
    "natural infernal caverns",
    "dark underground tunnels",
    "subterranean abyssal chambers"
  },

  hell_egyptish =
  {
    "ancient tomb architecture",
    "burial crypt complexes",
    "desert necropolis halls"
  },

  hell_Doom3_marble =
  {
    "polished infernal marble",
    "cold demonic temples",
    "martian occult architecture"
  },

  hell_kievan_rus =
  {
    "orthodox infernal halls",
    "ancient eastern cathedrals",
    "weathered ritual chambers"
  },

  hell_ReisalGothic =
  {
    "gothic cathedral ruins",
    "towering infernal arches",
    "medieval occult halls"
  },

  hell_Doom3_flesh_forge =
  {
    "biomechanical flesh foundries",
    "organic industrial nightmares",
    "living demonic machinery"
  },

  hell_gstone =
  {
    "green infernal stonework",
    "corrupted abyssal masonry",
    "weathered occult ruins"
  },

  hell_computerCatacombs =
  {
    "demonic data catacombs",
    "corrupted machine crypts",
    "hellish computer tunnels"
  },

  hell_Doom3_flesh =
  {
    "living flesh walls",
    "organic nightmare corridors",
    "mutated demonic interiors"
  },

  hell_armaetuscave =
  {
    "jagged infernal caverns",
    "hostile abyssal caves",
    "sharp volcanic tunnels"
  },

  hell_icecave =
  {
    "frozen abyssal caverns",
    "icy infernal tunnels",
    "glacial underworld chambers"
  },

  hell_GreenMarble =
  {
    "green marble temples",
    "emerald infernal halls",
    "ornate occult chambers"
  },

  hell_Hotbrick =
  {
    "heat-scorched brick halls",
    "burning infernal masonry",
    "smoldering abyssal corridors"
  },

  hell_gilded_bricks =
  {
    "gold-trimmed infernal masonry",
    "ornate demonic halls",
    "luxurious abyssal temples"
  },

  hell_Skin =
  {
    "skin-lined chambers",
    "flayed organic walls",
    "living flesh interiors"
  },


--[[LIQUIDS]]
  otex_purple_goop =
  {
    "thick strange purple substance",
    "bright purple slime",
    "purple alien blood"
  },

  nukage =
  {
    "dangerous toxic wastes",
    "disposed nuclear material",
    "radioactive coolant"
  },

  slime =
  {
    "industrial brown water",
    "run-off waste water",
    "untreated sewage"
  },

  blood =
  {
    "exposed blood plasma",
    "red blood",
    "organic fluids"
  },

  otex_lavaD1 =
  {
    "molten golden",
    "burning gold magma",
    "melting flowing gold"
  },

  otex_tar =
  {
    "sticky black pitch",
    "unprocessed oil tar",
    "oil mire"
  }
}

LLM_NAME.prompt_styles =
{
-- TECH
  tech =
  {
    "Generate a Doom map name that sounds like an industrial system still running after the end of its purpose.",
    "Generate a Doom map name that evokes vast machine infrastructure and forgotten engineering scale.",
    "Generate a Doom map name that feels synthetic, procedural, and constructed from layered systems.",
    "Generate a Doom map name that sounds like a malfunctioning megastructure still enforcing its logic.",
    "Generate a Doom map name that suggests automated architecture and impersonal industrial order.",
    "Generate a Doom map name that feels like a deep-space facility built for unknown functions.",
    "Generate a Doom map name that sounds like exposed circuitry embedded in massive architecture.",
    "Generate a Doom map name that evokes industrial silence, pressure systems, and mechanical inevitability.",
    "Generate a Doom map name that feels like an abandoned computational world frozen mid-process.",
    "Generate a Doom map name that suggests immense engineered spaces with no human reference point.",
    "Generate a Doom map name that sounds like data centers expanding into physical form.",
    "Generate a Doom map name that evokes brutalist machinery fused with high technology.",
    "Generate a Doom map name that feels like an endless industrial environment with no exit condition.",
    "Generate a Doom map name that suggests containment structures built at planetary scale.",
    "Generate a Doom map name that sounds like a system still executing without operators.",
    "Generate a Doom map name that evokes heavy mechanical geometry and sealed infrastructure."
  },

-- URBAN
  urban =
  {
    "Generate a Doom map name that sounds like a city fragment left running after collapse.",
    "Generate a Doom map name that evokes abandoned civic infrastructure and silent streets.",
    "Generate a Doom map name that feels like a decayed metropolitan zone seen through memory.",
    "Generate a Doom map name that suggests layered human architecture stripped of its inhabitants.",
    "Generate a Doom map name that sounds like forgotten urban districts sealed behind concrete.",
    "Generate a Doom map name that evokes dense city structures turned into labyrinths.",
    "Generate a Doom map name that feels like a commercial district frozen in decay.",
    "Generate a Doom map name that suggests endless housing blocks with no social presence.",
    "Generate a Doom map name that sounds like infrastructural sprawl with no center.",
    "Generate a Doom map name that evokes civic systems persisting after societal collapse.",
    "Generate a Doom map name that feels like backroom urban geometry and hidden corridors.",
    "Generate a Doom map name that suggests intersections of infrastructure and abandonment.",
    "Generate a Doom map name that sounds like industrial neighborhoods overtaken by silence.",
    "Generate a Doom map name that evokes collapsed city planning turned into maze logic.",
    "Generate a Doom map name that feels like a metropolitan shell without human narrative.",
    "Generate a Doom map name that suggests urban density turning into architectural noise."
  },

-- HELL
  hell =
  {
    "Generate a Doom map name that sounds like an infernal structure older than material reality.",
    "Generate a Doom map name that evokes ritual spaces carved into impossible geometry.",
    "Generate a Doom map name that feels like a cursed domain where architecture is alive.",
    "Generate a Doom map name that suggests eternal punishment encoded into physical space.",
    "Generate a Doom map name that sounds like a sacrificial landscape shaped by forgotten rites.",
    "Generate a Doom map name that evokes corrupted realms where matter behaves incorrectly.",
    "Generate a Doom map name that feels like ancient catacombs fused with living systems.",
    "Generate a Doom map name that suggests demonic infrastructure built from bone and stone.",
    "Generate a Doom map name that sounds like a hellish geography of shifting sanctuaries.",
    "Generate a Doom map name that evokes oppressive mythic architecture beyond human scale.",
    "Generate a Doom map name that feels like a cursed underworld organized like a machine.",
    "Generate a Doom map name that suggests divine punishment expressed as spatial design.",
    "Generate a Doom map name that sounds like burning structures that remember their victims.",
    "Generate a Doom map name that evokes infernal cathedrals embedded in geological time.",
    "Generate a Doom map name that feels like reality degrading into ritual geometry.",
    "Generate a Doom map name that suggests a domain where suffering becomes architectural form."
  }
}

LLM_NAME.prompt_flavors =
{
  -- these are substituted to the "Generate a Doom map name that " part of the instructional line
  dn3d = "Generate a Doom map name that leans towards a euphemistic 80's comedic porn parody. The name ",
  black_metal = "Generate a Doom map name that sounds like a hardcore black metal band song title. The name ",
  ecchi = "Generate a Doom map name that sounds like a English-translated Japanese ecchi hentai anime, game, or light novel title. The name ",
}

LLM_NAME.PROMPT_FLAVOR_CHOICES =
{
  "default", _("DEFAULT"),
  "dn3d", _("Duke Nukem"),
  "black_metal", _("Black Metal"),
  "ecchi", _("HDoom")
}

LLM_NAME.story_components =
{
  flavors = {
    "A War on Two Fronts",
    "The Unlikely Ally",
    "Betrayal from Within",
    "Invasion of the Unseen",
    "Rebellion's Rise and Fall",
    "Surviving a Hidden Uprising",
    "An Ancient Evil Arrives",
    "A New Threat Emerges",
    "Hunt for the Hidden Enemy",
    "Lost Souls in Desperate Circumstances",
    "Battle for the Soul of Humanity",
    "Survivors in an Unending War",
    "Unleashing a Terrible Terror",
    "Beyond the Gates of Madness",
    "Infernal Alliance Forms",
    "Doomsday Prophecy Unfolds",
    "Beneath the Shattered Surface",
    "Purgatory's Gate Opens Wide",
    "Fragile Balance of Power",
    "Convergence of Fates",
    "Sacrifice for the Greater Good",
    "Abandoned World, Abandoned Souls",
    "The Silent Observer Strikes",
    "Battle for a Dying Earth",
    "Shadows that Bind and Twist",
    "Fighting Against All Odds",
    "Eternal Night and Endless War",
    "Last Stand on Uncertain Ground",
    "Through the Eye of a Storm",
    "Hunters Become the Hunted",
    "The Last Bullet, The Last Prayer",
    "Beyond the Veil of Deception",
    "Infernal Machines Unleashed",
    "Battle Scars Tell a Thousand Tales",
    "Surviving on Borrowed Time",
    "When the World is Lost, What Remains?",
    "Unseen Hands Shape Fate",
    "Lost in an Endless Expanse",
    "The Price of Power Unleashed",
    "Fractured Souls Reunite"
  },

  naming_styles =
  {
    -- General rules
    "Names should sound militaristic and utilitarian.",
    "Names should sound cold, mechanical, and believable.",
    "Names should feel grounded rather than fantasy-like.",
    "Names should be concise and to-the-point.",
    "Names should avoid emotional or sentimental value.",
    "Names should convey a sense of duty or purpose.",

    -- Industrial/Abandoned themes
    "Names should resemble abandoned industrial facilities.",
    "Names should resemble forgotten sectors or dead stations.",
    "Names should evoke a sense of decay and neglect.",
    "Names should sound like the remnants of a bygone era.",
    "Names should be inspired by the works of dystopian architects.",

    -- Scientific/Corrupted themes
    "Names should sound like corrupted scientific projects.",
    "Names should be inspired by the works of mad scientists.",
    "Names should have an 'experiment gone wrong' feel to them.",
    "Names should evoke a sense of forbidden knowledge or power.",
    "Names should incorporate elements of chaos theory or quantum mechanics.",

    -- UAC/Colonial themes
    "Names should resemble failed UAC operations.",
    "Names should feel like lost colony designations.",
    "Names should evoke a sense of isolation and abandonment.",
    "Names should be inspired by the works of colonial-era explorers.",
    "Names should incorporate elements of bureaucratic jargon or red tape.",

    -- Other themes
    "Names should sound like ancient, forgotten rituals.",
    "Names should be inspired by the works of cyberpunk authors.",
    "Names should evoke a sense of nostalgia for a lost future.",
    "Names should be inspired by the aesthetics of retro-futurism.",
    "Names should incorporate elements of existential philosophy or nihilism."
  },

  places = {
    tech = {
      "Cygnus Labs, a hub of intergalactic innovation and experimentation",
      "Nova Terra Research Facility, where scientists push the boundaries of human knowledge",
      "Nexus Outpost, a strategic stronghold in the heart of the galaxy",
      "Illuminari Tower, a beacon of enlightenment and spiritual discovery",
      "Apex Lab, a cutting-edge research facility driven by ambition and progress",
      "Elysium Cathedral, a sacred sanctuary dedicated to the pursuit of peace and harmony",
      "Spire of the Ancients, a mystical tower housing secrets of the past",
      "Crystal Spire, an otherworldly monument to the power of Argent energy",
      "Aurora Institute, a premier academy for interstellar education and advancement",
      "Helix-5 Facility, a high-stakes research center exploring the mysteries of space-time",
      "Spectral Research Lab, where experts delve into the unknown territories of quantum physics",
      "Olympus Citadel, an imposing fortress guarding the secrets of the gods",
      "Nova Haven, a well-guarded high-security metropolis sitting above the ashes of the previous",
      "New Erebus City, a sprawling metropolis fueled by innovation and industry",
      "Neo Tartarus Colony, a pioneering settlement on the edge of the unknown",
      "Pandora's Gate, a UAC laboratory supercomplex with a mystical portal to uncharted realms",
      "Aegis Station, a heavily fortified command base safeguarding the UAC's interests",
      "Kairos Labs, where scientists unravel the secrets of other dimensions and Hell itself",
      "Nebula's Edge Facility, a cutting-edge research facility probing the mysteries of black holes",
      "Erebus Abyss, a foreboding underground complex hiding ancient secrets and untold dangers",
      "Aurora Tower, a gleaming spire piercing the clouds, hub of intergalactic diplomacy",
      "Hope's Reach, an experimental city designed by the UAC to be in a cyclical phase of destruction and rebuilding",
    },

    urban = {
      "Novus Corpus, a vibrant corporate metropolis the UAC have built over a terrible secret",
      "Korvus City, a foreboding stronghold built into the sides of towering mountains",
      "Aurora Heights, a previously picturesque suburb now partially fallen to the forces of Hell",
      "Cathedral Heights, a sacred site where ancient structures pierce the sky",
      "Elysium Plains, a serene and idyllic region of rolling hills and wealthy residential complexes",
      "Paradise Junction, a bustling hub connecting traders and travelers from far and wide",
      "The Threshold, a massive mining complex abandoned after uncovering a Slipgate from which Hell has slipped through",
      "Ghoul's Garrison, a foreboding fortress guarded by twisted creatures and dark magic",
      "Sentinel's Watch, a sturdy insular stronghold held together by survivors of the apocalypse",
      "Fortress of the Ancients, a mysterious stronghold housing secrets of the past",
      "The Citadel, an imposing seat of power and authority now crumbling in destitute"
    },

    hell = {
      "Infernox Abyss, a bottomless pit of eternal torment and suffering",
      "Magma Furnace, a scorching hellscape where molten lava flows like liquid fire",
      "Furnacehold Citadel, a foreboding fortress built from twisted, blackened stone",
      "Brimstone City, a charred and smoldering metropolis consumed by unending flames",
      "Emberfall Canyon, a desolate chasm of burning ash and sulfurous fumes",
      "Infernox Ironworks, a nightmarish factory where demonic forces toil in eternal bondage",
      "Blazing Heights, a twisted skyscraper of flames that pierces the sky like a screaming blade",
      "Firebrand's Folly, a cursed stronghold built upon a lake of burning oil and tar",
      "Tomb of the Damned, an abyssal pit where the shades of the damned writhe in eternal torment"
    }
  },

  actors =
  {
    -- protagonists
    "Dr. Emily Chen, a brilliant UAC physicist horrified by the experiments she helped create",
    "Captain Jackson Reed, a battle-worn security commander who survived multiple facility collapses",
    "Sergeant Rachel Patel, a relentless resistance fighter known for impossible last stands",
    "Samuel Thompson, a gifted engineer responsible for maintaining unstable dimensional gateways",
    "Kara Vash, a scavenger from the outer colonies who learned to survive inside ruined megacities",
    "Lieutenant Mira Solano, a reconnaissance officer obsessed with mapping Hell-corrupted territories",
    "Elias Ward, a former UAC technician carrying stolen research capable of sealing dimensional breaches",
    "Commander Isaac Vale, a hardened marine officer who refuses to abandon civilian survivors",
    "Dr. Naomi Mercer, a cybernetics specialist searching for a cure to demonic corruption",
    "Jonah Kreel, a fugitive smuggler transporting refugees through infested wastelands",
    "Aria Locke, a communications officer intercepting impossible signals from beyond Hell itself",
    "Ava Moreno, a young and gifted hacker who infiltrates UAC systems to prevent disasters",
    "Caleb Taylor, a former special forces operative turned mercenary, seeking redemption in the wastelands",
    "Dr. Mayra Singh, a brilliant xenobiologist studying Hell's twisted flora and fauna",
    "Lena Ibarra, a skilled engineer who designs innovative solutions to survive the apocalypse",


    -- neutral
    "Dr. Sophia Argus, a secretive UAC scientist whose assistance always advances hidden objectives",
    "Colonel Viktor Petrov, a decorated military strategist trapped between duty and conscience",
    "Father Marcus Vale, a priest who believes Hell's invasion is divine punishment for humanity's arrogance",
    "Lena Lee, a brilliant network infiltrator trading intelligence to whichever side keeps her alive",
    "The Broker, an anonymous information dealer who somehow profits from every catastrophe",
    "Administrator Havel, a UAC executive determined to preserve order regardless of the human cost",
    "Nyx, a masked wanderer claiming to remember previous demonic invasions erased from history",
    "Professor Gideon Thorne, an archaeologist obsessed with proving Hell existed long before humanity",
    "The Ferryman, a mysterious figure guiding survivors through condemned transit tunnels beneath ruined cities",
    "Sister Celestine, a wandering preacher whose visions blur the line between prophecy and madness",
    "Ethan Kim, a charismatic cult leader who must navigate his own moral compass amidst demonic invasions",
    "Dr. Zhang Wei, a UAC scientist secretly working on a cure for demon corruption while hiding her true intentions",
    "Father Michael Patel, a priest struggling with his faith as Hell's influence grows stronger",
    "The Architect, an enigmatic figure designing and manipulating the infrastructure of ruined cities",
    "Gideon Reyes, a seasoned smuggler turned informant, trading information to both human and demonic factions",
    "Sister Elara, a mystic soldier and healer who seeks to understand and counter the corrupting influence of Hell",
  
    -- antagonists    
    "The Matron, a colossal cybernetic arachnid enslaved by UAC experimentation and driven insane by agony",
    "Carnifex, a towering executioner demon who commands entire infernal war hosts",
    "Maledicta, a manipulative hell priestess seeking to awaken forgotten gods beneath dead worlds",
    "Korath, the corrupted overseer of the UAC's deepest blacksite laboratories",
    "The Bloodhand, an ancient infernal noble who engineers wars between humanity and Hell",
    "Archon Veyruul, a machine fused with demonic intelligence governing an abandoned fortress world",
    "The Hollow King, a skeletal monarch entombed beneath catacombs older than civilization itself",
    "Executor Cain, a former human commander transformed into Hell's most feared hunter",
    "The Choir Below, a collective consciousness formed from thousands of tortured souls",
    "Mother Cyst, a grotesque flesh entity endlessly spreading organic corruption across entire facilities",
    "The Warden of Rust, a towering sentinel controlling industrial sectors consumed by demonic machinery",
    "The Scourgebringer, a brutal demon warlord feasting on humanity's suffering and despair",
    "Khar Xanatek, a charismatic cult leader manipulating his followers into unleashing demonic powers",
    "Vex Ardos, a ruthless bounty hunter tracking down human survivors who possess powerful artifacts",
    "The Aspect of Ruin, an ancient entity awakened and barely contained by UAC experimentation",
    "Domos the Glutton, a infinitely hungering demon lord that feasts both on human souls and its own demons alike",

    -- factions
    "The Blood Host, one among the countless infernal legions invading mortal worlds",
    "UAC Blacksite Division, clandestine researchers experimenting with forbidden dimensional technology",
    "The Iron Guard, elite and possessed security forces loyal only to surviving UAC leadership",
    "The ARC Resistance, fragmented human rebels fighting against both Hell and corrupted corporations",
    "The Cult of the Shattered Veil, fanatics attempting to merge Earth permanently with Hell",
    "The Pilgrims of Ash, survivors wandering irradiated wastelands in search of sanctuary",
    "The Circle, occult scholars secretly communicating with entities beyond Hell",
    "The Red Meridian Fleet, an off-world militarized colony force left marooned",
    "The Choir Mechanica, machine worshippers who believe demonic corruption is humanity's next evolution",
    "The Keepers of Titans, isolationist defenders guarding ancient sealed vaults",
    "The Mourning Legion, ghostlike soldiers endlessly fighting a war they already lost",
    "The Order of the Black Depths, a secret society studying and containing demonic powers within themselves",
    "The Nova Initiative, a special coalition of rogue scientists and engineers pushing the boundaries of forbidden technology",
    "The Red Vipers, an aggressive isolationist militant group fighting against human corruption and Hell's influence",
    "The Collective, a loose network former UAC scientists turned mystics and occultists dedicated to unleashing Hell",

    -- us?!
    "The Obsidian Developers, a nigh-invincible and engimatic group from another dimension always only observing and never interfering"
  },

  length =
  {
    epi =
[[Make it as engaging as possible.

SYSTEM: Please use exactly the following tagged structure and do not use any Markdown.
Please do not add other blocks than is found in the example:

<S1> 
story intro here 
</S1>

<S2> 
story ending here 
</S2>

The text in each tag section must at least be 140-150 words.]],

    game =
[[There are three chapters and the story is an intro and end for each,
making six intermissions overall. Each chapter has new twists and revalations.

SYSTEM: Use the following tagged structure and do not use any Markdown formatting.
Please do not add other blocks than is found in the example:

<S1> 
chapter 1 intro here
</S1>

<S2> 
chapter 1 ending here
</S2>

<S3> 
chapter 2 intro here
</S3>

<S4> 
chapter 2 ending here
</S4>

<S5> 
chapter 3 intro here
</S5>

<S6> 
chapter 3 ending here
</S6>

The text in each tag section must at least be 140-150 words.]]
  }
}

LLM_NAME.history = {}

function LLM_NAME.setup(self)
  local function ollama_is_alive(endpoint)
    local cmd = 'curl -s --fail --max-time 2 ' .. endpoint
    local pipe = io.popen(cmd)
    if not pipe then return false end

    local result = pipe:read("*a")
    pipe:close()

    return result ~= nil and result:match('"models"') ~= nil
  end

  if PARAM.bool_listener_check == 1 then
    if not ollama_is_alive(LLM_NAME.test_endpoint) then
      error("LLM Namer: Could not detect Ollama instance.")
    end
  end

  module_param_up(self)
end


function LLM_NAME.get_some_info(self, lev)

  ----------------------------------------------------------------------
  -- SEMANTIC HELPERS
  ----------------------------------------------------------------------

  local function get_semantic(v)
    local term = LLM_NAME.semantics_grouping[v] or v
    local pool = LLM_NAME.semantics[term]

    if pool and type(pool) == "table" then
      return rand.pick(pool)
    end

    gui.printf("LLM Namer: No semantic found for " .. term .. "\n")

    return term
  end

  -- combine phrases and words
  local function to_phrase(words)
    local count = #words
    if count == 0 then
      return ""
    elseif count == 1 then
      return words[1]
    elseif count == 2 then
      return words[1] .. " and " .. words[2]
    else
      -- join all but the last with commas
      local body = table.concat(words, ", ", 1, count - 1)
      return body .. ", and " .. words[count]
    end
  end

  local function classify_ratio(ratio)
    if ratio > 0.99 then return "entirely"
    elseif ratio > 0.8 then return "almost entirely"
    elseif ratio > 0.7 then return "almost"
    elseif ratio > 0.6 then return "mostly"
    elseif ratio > 0.5 then return "half"
    elseif ratio > 0.4 then return "roughly half"
    elseif ratio > 0.3 then return "some"
    elseif ratio > 0.2 then return "few"
    end
    return "rarely"
  end

  local function openness_description(v)
    if v < 0.10 then
      return rand.pick({ "claustrophobic", "cramped", "suffocating", "oppressive", "extremely confined" })
    elseif v < 0.20 then
      return rand.pick({ "tight", "narrow", "confined", "compressed", "dense" })
    elseif v < 0.30 then
      return rand.pick({ "compact", "structured", "controlled", "segmented" })
    elseif v < 0.40 then
      return rand.pick({ "balanced", "moderately open", "mixed", "layered" })
    elseif v < 0.50 then
      return rand.pick({ "open", "spacious", "wide", "expansive" })
    elseif v < 0.65 then
      return rand.pick({ "sprawling", "broad", "vast", "sweeping" })
    else
      return rand.pick({ "massive", "monumental", "cavernous", "boundless", "immense" })
    end
  end

  ----------------------------------------------------------------------
  -- DATA COLLECTION
  ----------------------------------------------------------------------

  local room_themes = {}
  local shape_rules = {}
  local wall_groups = {}
  local floor_groups = {}

  local room_scores = {
    outdoor_vol = 0,
    building_vol = 0,
    park_vol = 0,
    cave_vol = 0
  }

  local raw_bulding_vol = 0
  local raw_outdoor_vol = 0
  local total_vol = 0
  local level_openness = 0

  -- collect room themes
  local function add_room_theme(R)
    if R.is_outdoor then return end

    local tab = R.theme
    if not tab then return end

    if room_themes[tab.name] then
      room_themes[tab.name] =
        room_themes[tab.name] + R.svolume
    else
      room_themes[tab.name] = R.svolume
    end
  end

  -- collect area wall groups
  local function add_wall_groups(A, mode)
    local fg = A.floor_group

    if fg and fg.wall_group and A.svolume then
      if wall_groups[fg.wall_group] then
        wall_groups[fg.wall_group] = wall_groups[fg.wall_group] + A.svolume
      else
        wall_groups[fg.wall_group] = A.svolume
      end
    end
  end

  local function add_shape_rules(R)
    if not R.absurd_shapes then return end

    for shape in pairs(R.absurd_shapes) do
      table.add_unique(shape_rules, shape)
    end
  end

  local function accumulate_volume(R)
    local v = R.svolume or 0
    total_vol = total_vol + v

    if R.is_outdoor then
      room_scores.outdoor_vol = room_scores.outdoor_vol + v
    end

    local env = R.get_env and R:get_env()

    if env == "building" then
      room_scores.building_vol = room_scores.building_vol + v
    elseif env == "park" then
      room_scores.park_vol = room_scores.park_vol + v
    elseif env == "cave" then
      room_scores.cave_vol = room_scores.cave_vol + v
    end
  end

  ----------------------------------------------------------------------
  -- MAIN LOOP
  ----------------------------------------------------------------------

  for _, R in pairs(lev.rooms) do
    add_room_theme(R)
    add_shape_rules(R)
    accumulate_volume(R)

    for _, A in pairs(R.areas) do
      add_wall_groups(A)
    end

    level_openness = level_openness + (R.openness or 0)
  end

  ----------------------------------------------------------------------
  -- NORMALISE SCORES
  ----------------------------------------------------------------------

  -- room kind distrubition
  raw_bulding_vol = room_scores.building_vol

  if total_vol > 0 then
    for k, v in pairs(room_scores) do
      room_scores[k] = v / total_vol
    end
  end

  local room_count = #lev.rooms
  level_openness = room_count > 0 and (level_openness / room_count) or 0

  -- wall group distribution
  if room_scores.building_vol > 0.33 then
    for k, v in pairs(wall_groups) do
      wall_groups[k] = v / raw_bulding_vol
    end
  end

  -- wall group distribution
  for k, v in pairs(room_themes) do
    room_themes[k] = v / total_vol
  end

  ----------------------------------------------------------------------
  -- BUILD PROMPT
  ----------------------------------------------------------------------

  local lines = {}

  table.insert(lines,
    "The following information is the level for context. " ..
    "Be creative and use unique words for the name.\n"
  )

  ----------------------------------------------------------------------
  -- PRIMARY THEME
  ----------------------------------------------------------------------

  table.insert(lines, get_semantic(lev.theme_name) .. "\n")

  ----------------------------------------------------------------------
  -- ROOM DISTRIBUTION
  ----------------------------------------------------------------------

  local function add_ratio_line(key, label)
    local c = classify_ratio(room_scores[key])
    if c then
      table.insert(lines, "The map name is " .. c .. " " .. label .. ".\n")
    end
  end

  --add_ratio_line("outdoor_vol", "outdoors")
  --add_ratio_line("building_vol", "indoors")
  add_ratio_line("cave_vol", "a cave")
  add_ratio_line("park_vol", "natural terrain")

  ----------------------------------------------------------------------
  -- SHAPES
  ----------------------------------------------------------------------

  if #shape_rules > 0 then
    table.insert(lines,
      "The map's layout is made of the following shape grammar rules: \n"
    )

    for _, rule in ipairs(shape_rules) do
      table.insert(lines, "* " .. rule .. "\n")
    end

    table.insert(lines, "\n")
  end

  ----------------------------------------------------------------------
  -- INDOOR DETAILS
  ----------------------------------------------------------------------

  if room_scores.building_vol > 0.25 then
    table.insert(lines,
      rand.pick({
      "The rooms in the map are made of ",
      "The structures are constucted from ",
      "The interiors are built of ",
      "The indoors have been fabricated with "
      })
    )

    local room_texts = {}

    -- room themes
    room_themes = table.top_n_by_key(room_themes, 3)

    for theme_name, score in pairs(room_themes) do
      table.add_unique(room_texts,
        classify_ratio(score) .. " " .. get_semantic(theme_name)
      )
    end

    table.insert(lines, to_phrase(room_texts))

    -- room prefabs
    local bool_wall_groups_worth_talking_about
    local prefab_texts = {}

    wall_groups = table.top_n_by_key(wall_groups, 3)

    for fab, score in pairs(wall_groups) do
      if score > 0.2 then
        bool_wall_groups_worth_talking_about = true
        table.add_unique(prefab_texts,
        classify_ratio(score) .. " " .. get_semantic(fab)
        )
      end
    end

    local presence_v
    if bool_wall_groups_worth_talking_about then
      presence_v = rand.pick(
        {
          " populated with ",
          " made up of ",
          " with ",
          " installed with",
          " constructed with ",
          "contains ",
          " built with ",
          " hosts "
        }
      )
      table.insert(lines, presence_v)
      table.insert(lines, to_phrase(prefab_texts))
    end

    table.insert(lines, ".\n")
  end

  ----------------------------------------------------------------------
  -- OUTDOOR DETAILS
  ----------------------------------------------------------------------

  if lev.is_dark and room_scores.outdoor_vol > 0.33 then
    table.insert(lines,
      rand.pick(
        {
          "The level takes place during a dark night.\n",
          "A dark moonless sky unfolds overhead.\n",
          "A pitch-black night sky hangs above.\n",
          "A looming dark night casts an eerie mood over the level.\n"
        }
      )
    )
  end

  local openness_v = openness_description(level_openness)
  table.insert(lines,
    rand.pick(
      {
        "The map has a " .. openness_v .. " layout.\n",
        openness_v .. " spaces domiante the whole map.\n",
        "Dominant structures in this map are " .. openness_v .. ".\n",
        "The map has a " .. openness_v .. " design.\n"
      }
    )
  )

  ----------------------------------------------------------------------
  -- OUTDOOR DETAILING
  ----------------------------------------------------------------------

  if room_scores.outdoor_vol > 0.33 then
    if lev.outdoor_wall_group and lev.outdoor_wall_group ~= "PLAIN" then
      table.insert(lines,
        "The outdoors use the " .. lev.outdoor_wall_group .. " prefab set.\n"
      )
    end
  end

  if room_scores.outdoor_vol > 0.5 and lev.outdoor_theme then
    local theme_lines = nil

    if lev.outdoor_theme == "sand" then
      theme_lines = rand.pick(get_semantic("sand"))
    elseif lev.outdoor_theme == "snow" then
      theme_lines = rand.pick(get_semantic("sand"))
    end

    if theme_lines then
      table.insert(lines, rand.pick(theme_lines))
    end
  end

  ----------------------------------------------------------------------
  -- LIQUIDS
  ----------------------------------------------------------------------

  if lev.liquid_usage >= 0.33 then
    local liq_word
    --if lev.liquid_usage > 0.9 then
      --liq_word = rand.pick({" is overwhelmed by ", " is drowned out by "})
    if lev.liquid_usage > 0.8 then
      liq_word = rand.pick({" is overrun with ", " is teeming with ", " is flooded with "})
    elseif lev.liquid_usage > 0.7 then
      liq_word = rand.pick({" has a significant amount of ", " is abundant with ", " has a substantial quantities of "})
    elseif lev.liquid_usage > 0.6 then
      liq_word = " abundant with "
    elseif lev.liquid_usage > 0.5 then
      liq_word = rand.pick({" is moderately wet with ", " has some ", " is partially filled with "})
    elseif lev.liquid_usage > 0.4 then
      liq_word = " has a small amount of "
    elseif lev.liquid_usage > 0.3 then
      liq_word = rand.pick({" has almost drained ", " has nearly depleted "})
    end

    table.insert(lines,
      "The map" .. liq_word ..
      rand.pick({ "pools", "open pits", "basins", "rivers", "channels", "reservoirs" }) ..
      " of " .. get_semantic(lev.liquid.name) .. ".\n"
    )
  end

  ----------------------------------------------------------------------
  -- STREET FLAG
  ----------------------------------------------------------------------

  if lev.has_streets then
    local street_phrase = rand.pick(
      {
        "The level contains extensive city streets",
        "The level is laid out with sprawling city streets",
        "The level features a maze of urban roads",
        "The level unfolds across wide city avenues",
        "The level is set amid a network of bustling streets",
        "The level stretches through an expanse of metropolitan roads",
        "The level winds its way along crowded city blocks",
        "The level encompasses a grid of extensive urban streets",
        "The level is dominated by far-reaching city thoroughfares"
      }
    )
    table.insert(lines, street_phrase .. "\n")
  end

  ----------------------------------------------------------------------
  -- ORIGINAL NAME
  ----------------------------------------------------------------------

  table.insert(lines,
    "The original map is '" .. lev.description .. "'.\n"
  )

  ----------------------------------------------------------------------
  -- EXAMPLES
  ----------------------------------------------------------------------

  table.insert(lines, "The following are further examples from our internal generator:\n")

  for i = 1, 3 do
    table.insert(lines, Naming_grab_one(lev.name_class) .. "\n")
  end

  table.insert(lines, "\n\n")

  ----------------------------------------------------------------------
  -- FINAL OUTPUT
  ----------------------------------------------------------------------

  local info_str = table.concat(lines)
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
      'start "" /b curl --max-time 30 -sS ' ..
      '-H "Content-Type: application/json" '..
      '"' .. LLM_NAME.endpoint .. '"' ..
      ' -d @ollama_payload.json'

    gui.debugf("\nCommand:\n\n")
    gui.debugf(cmd)
    gui.debugf("\n")

    local pipe = io.popen(cmd)

    if not pipe then
      gui.printf("LLM Namer: Failed to open stream.\n")
      return nil
    end

    local result = pipe:read("*a")

    pipe:close()

    gui.debugf("LLM Namer: Raw response:\n%s\n", result)

    return result
  end


  -- extract response from JSON response
  local function extract_response(json, mode)

    if not json then
      return nil
    end

    local function extract_json_string(src, key)

      local pattern = '"' .. key .. '"%s*:%s*"'
      local start_pos = src:find(pattern)

      if not start_pos then
        return nil
      end

      -- locate opening quote of value
      local i = src:find('"', start_pos + #key + 2)

      if not i then
        return nil
      end

      i = i + 1

      local chars = {}
      local escaped = false

      while i <= #src do

        local c = src:sub(i, i)

        if escaped then

          table.insert(chars, c)
          escaped = false

        elseif c == "\\" then

          escaped = true
          table.insert(chars, c)

        elseif c == '"' then

          break

        else

          table.insert(chars, c)

        end

        i = i + 1
      end

      return table.concat(chars)
    end

    local response = extract_json_string(json, "response")

    if not response then
      return nil
    end

    response = response:gsub("\\n", "\n")
    response = response:gsub("\\r", "\r")
    response = response:gsub("\\t", "\t")
    response = response:gsub('\\"', '"')
    response = response:gsub("\\\\", "\\")

    -- mode cleanup
    if mode == "name" then

      -- force single line
      response = response:match("^[^\r\n`]+")

      -- remove accidental quotes/fences
      response = response:gsub("[\"`]", "")

    elseif mode == "story" then

      -- remove markdown fences
      response = response:gsub("^```[%w]*\n?", "")
      response = response:gsub("\n?```$", "")

    end

    -- trim whitespaces
    response = response:gsub("^%s+", "")
    response = response:gsub("%s+$", "")

    return response
  end


  -- perform a query
  local function ask(prompt, options, mode)

    gui.printf("LLM Namer: Prompt \n" .. prompt)

    local raw = query(prompt, options)

    if not raw then
      gui.printf("LLM query failed: no response\n")
      return nil
    end

    local response = extract_response(raw, mode)

    gui.debugf(
      "LLM Parsed response (%s):\n%s\n",
      tostring(mode),
      tostring(response)
    )

    if not response or response == "" then
      return nil
    end

    return response
  end


  -- number range remap... why is this not in our utils?
  local function map_value(value, in_min, in_max, out_min, out_max)
    return (value - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
  end


  -- story chunk splitter
  local function parse_story_chunks(response)

    local stories = {}

    response = response:gsub("\\u003c", "<")
    response = response:gsub("\\u003e", ">")
    response = response:gsub("\\u0026", "&")

    response = response:gsub("\\n", "\n")
    response = response:gsub("\\r", "\r")
    response = response:gsub("\\t", "\t")

    response = response:gsub("^```[%w]*\n?", "")
    response = response:gsub("\n?```$", "")

    for id, text in response:gmatch("<S(%d+)>(.-)</S%d+>") do
      stories[tonumber(id)] =
        (text:gsub("^%s+", ""):gsub("%s+$", ""))
    end

    for i = 1, 6 do

      if not stories[i] then

        local chunk

        -- try: S[i] -> S[i+1]
        local next_tag = "<S" .. (i + 1) .. ">"
        chunk = response:match("<S" .. i .. ">(.-)" .. next_tag)

        -- fallback: final section goes to EOF
        if not chunk then
          chunk = response:match("<S" .. i .. ">(.*)$")
        end

        if chunk then
          chunk = chunk
            :gsub("^%s+", "")
            :gsub("%s+$", "")

          stories[i] = chunk
        end
      end
    end

    for i = 1, 6 do
      if stories[i] then
        stories[i] = stories[i]
          :gsub("\n%s*\n%s*\n+", "\n\n") -- collapse excessive blank lines
          :gsub("^%s+", "")
          :gsub("%s+$", "")
      end
    end

    return stories
  end

  local function format_story_string(text, max_chars)

    local formatted_lines = {}

    for paragraph in text:gmatch("([^\n]+)") do

      local current_line = ""

      for word in paragraph:gmatch("%S+") do

        if #current_line + #word + 1 <= max_chars then

          if current_line == "" then
            current_line = word
          else
            current_line = current_line .. " " .. word
          end

        else

          table.insert(formatted_lines, '"' .. current_line .. ' \\n"')
          current_line = word

        end

      end

      if current_line ~= "" then
        table.insert(formatted_lines, '"' .. current_line .. ' \\n\\n"')
      end

    end

    return table.concat(formatted_lines, "\n")

  end


  -- string escaper
  local function escape_string(s)

    if not s then return nil end

    -- normalize newlines first
    s = s:gsub("\r\n", "\n")

    -- escape backslashes FIRST (important order)
    s = s:gsub("\\", "\\\\")

    -- escape quotes
    s = s:gsub('"', '\\"')
    s = s:gsub("'", "\\'")

    -- optionally normalize control chars
    s = s:gsub("\t", "\\t")

    return s
  end

  -- main name generator capsule
  local function generate_level_name(level_data, episodic_level_data)

    local epi_lev = episodic_level_data

    local style_line
    if LLM_NAME.prompt_styles[epi_lev.theme_name] then
      style_line = rand.pick(LLM_NAME.prompt_styles[epi_lev.theme_name]) .. "\n"
    else
      style_line = "Generate a name for a Doom map.\n"
    end


    local word_count_rule = rand.key_by_probs(
      {
        ["1 word only"] = 8,
        ["2 words only"] = 10,
        ["3 words only"] = 9,
        ["4 words only"] = 8,
        ["5 words only"] = 3,
        ["6 words only"] = 2
      }
    )

    local prompt = style_line ..
[[Feel free to use metaphor, mood, or unusual imagery.

Rules:
- 1 line only
- ]] .. word_count_rule .. [[
- no explanation
- no quotes
- no punctuation or line breaks

]]..
level_data

    -- prompt flavor injection
    if PARAM.prompt_flavor ~= "default" then
      prompt = string.gsub(prompt,
      "Generate a Doom map name that ",
      LLM_NAME.prompt_flavors[PARAM.prompt_flavor])
    end

    -- LLM temperature variation, later maps have crazier names
    local pick_tmp
    if #GAME.levels > 4 and epi_lev.along then
      pick_tmp = map_value(epi_lev.along, 0, 1, 0.25, 1.2)
    end

    -- refer to name history to avoid name re-use
    prompt = prompt .. "The following names are already used. Avoid re-using elements of them:\n"
    if #LLM_NAME.history > 0 then
      for _, name in ipairs(LLM_NAME.history) do
        prompt = prompt .. "* " .. name .. "\n"
      end
    end

    return ask(prompt,
    {
      temperature = pick_tmp or 0.85,
      num_predict = 20
    },
    "name")
  end


  -- level metadata collector
  local function collect_level_data(level_tab)

    local info

    local cur_level = table.copy(level_tab)

    local ascii_map = cur_level.ascii_map

    -- get other info
    info = LLM_NAME.level_infos[cur_level.id]

    --[[info = info ..
    "The following is a top-down visual map of the level but as ASCII text.\n\n"..
    ascii_map .. "\n\n"..
    "Each character represents a grid space.\n"..
    "Small letters - an indoor room.\n"..
    "Big letters - an outdoor room.\n"..
    "Letters are sequential and the same letters represent the same room only.\n"..
    "/ and \\ - diagonal walls.\n"..
    "^ > v < - directional stairs in the same room.\n"..
    "~ - liquids, if present.\n" ..
    "# - point of interest along a wall.\n" ..
    "Try to infer a description of the layout based on the ASCII map too.\n"]]

    return info

  end

  local function generate_story()

    local prompt =
[[Write a uniquely engaging story for Doom's intermission screens.

The story takes place over the course of the whole game.
Each section of the story is read far apart from each other.

Story Flavor: _FLAVOR_

Location: _LOCATION_, somewhere in the twisted infinite hellscapes of future Earth

I need the story to be properly formatted. Do not provide any explanation.

Rules:
- narrate in second person
- Doom fan fiction style
- no real-world locations
- purely fan fiction location that is not mentioned to be anywhere specific
- avoid using canonical Doom proper nouns
- each section should escalate dramatically
- each section should introduce new revelations or consequences
- avoid all use of double quotes as text will go through a script parser
- absolutely avoid any use of italics, bold, or any Markdown formatting
- do not add explanations or commentary to the content

The silent marine protagonist is the Doomslayer and needs no introduction, forever fighting hell from place to place in an eternal war with hell.
The Doomslayer always emerges victorious in this current story but there will always be a new story, another battle elsewhere.
Please avoid cliffhangers or "to be continued" endings. Instead, the current arc ends a hint at there being always more to do.

_CHARACTER_

_FORMAT_
]]
    -- flavor injection
    local story_flavor = rand.pick(LLM_NAME.story_components.flavors)
    prompt = string.gsub(prompt,
    "_FLAVOR_",
    story_flavor)

    -- place injection
    local story_place = rand.pick(
      LLM_NAME.story_components.places[rand.pick({"urban","tech","hell"})]
      )
    prompt = string.gsub(prompt,
    "_LOCATION_",
    story_place)

    local story_characters
    story_characters = rand.key_by_probs({
      ["Introduce an original allied character in the story.\n"]=3,
      ["Introduce an original neutral character in the story.\n"]=4,
      ["Introduce an original hostile character in the story.\n"]=5,
      ["Introduce two original characters in the story.\n"]=7,
      ["Introduce three original characters in the story.\n"]=1,
      ["_BE_SPECIFIC_"]=15, -- use our pregenerated characters above
      [""]=4 -- no character prompt
      })

      -- try different names: Kaelis, Kraelion, the Devourer are kind of appearing a LOT
      if story_characters ~= "_BE_SPECIFIC_" then
        story_characters = story_characters .. rand.pick(LLM_NAME.story_components.naming_styles) .. "\n"
        if rand.odds(50) then
          story_characters = story_characters .. "Please change any provided names in the prompt to any you deem fit.\n"
        end
      end
    if story_characters == "_BE_SPECIFIC_" then
      story_characters = "The following appear in the story:\n"
      for i = 1, rand.pick({1,2,3}) do
        story_characters = story_characters .. rand.pick(LLM_NAME.story_components.actors).. "\n"
      end

      -- maybe change up our pregen names too!
      if rand.odds(33) then
        story_characters = story_characters .. "Please change any provided names in the prompt to any you deem fit.\n"
        story_characters = story_characters .. rand.pick(LLM_NAME.story_components.naming_styles) .. "\n"
      end
    end
    prompt = string.gsub(prompt,
    "_CHARACTER_",
    story_characters)

    local story_format
    if OB_CONFIG.length == "game" then
      story_format = LLM_NAME.story_components.length.game
    else
      story_format = LLM_NAME.story_components.length.epi
    end
    prompt = string.gsub(prompt,
    "_FORMAT_",
    story_format)

    gui.printf("LLM Namer: Story teller prompt\n" .. prompt .. "\n")

    -- temperature
    local temp = rand.pick
    {
      0.85,
      0.90,
      0.95
    }

    -- prompt structure
    local story_chunks = ask(prompt,
    {
      temperature = temp,
      num_predict = 1800
    },
    "story")

    local story_tab = {}
    gui.printf(story_chunks .. " <- RAW\n")
    story_tab = parse_story_chunks(story_chunks)

    for s_pos = 1, #story_tab do

      -- insert story sequences
      local chunk_name
      if s_pos%2 == 1 then
        chunk_name = "STORYSTART"
      else
        chunk_name = "STORYEND"
      end

      gui.printf("LLM Namer: " .. chunk_name .. math.ceil(s_pos/2) .. ": " .. story_tab[s_pos] .. "\n")
      table.insert(PARAM.language_lump, chunk_name .. math.ceil(s_pos/2) .. " =\n")
      table.insert(PARAM.language_lump,
        format_story_string(
          escape_string(
            story_tab[s_pos]
          ),
          56
        ) .. ';\n'
      )
      table.insert(PARAM.language_lump, "\n")
    end

  end


  if PARAM.bool_llm_namer == 1 then


    -- level name generator
    for _,epi in pairs(GAME.episodes) do
      for _,L in pairs(epi.levels) do

        if PARAM.bool_skip_boss_maps == 1 and L.is_procedural_gotcha then
          -- do muffins
        else
          local level_data = collect_level_data(L)
          local name = generate_level_name(level_data, L)

          if name then
            gui.printf("LLM Namer: " .. L.name .. " name '" ..
            L.description .. "' substituted with '" .. name .. "'!\n")

            L.description = name

            table.insert(LLM_NAME.history , name)
          end

        end
      end
    end

    -- intermission story generator
    if PARAM.bool_generate_stories == 1 then
      generate_story()
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
        "This module uses Lua io.popen to access cURL, and may cause CMD to briefly appear. This is normal behavior.\n\n" ..
        "The module DOES NOT SEND DATA outside of your PC. " ..
        "This module will not work if you do not have libcurl as it communicates in RESTful API style.\n\n"),
      priority = 100,
    },

    {
      name = "bool_skip_boss_maps",
      label = _("Skip Gotchas and Boss Maps"),
      valuator = "button",
      default = 1,
      tooltip = _("Skips renaming Procedural Gotchas or Boss Maps when enabled."),
      priority = 99
    },

    {
      name = "prompt_flavor",
      label = _("Prompt Flavor"),
      choices = LLM_NAME.PROMPT_FLAVOR_CHOICES,
      default = "default",
      tooltip = _("Adds additional flavoring to the LLM-generated names by biasing prompt towards specific descriptions."),
      priority = 98,
      gap = 1
    },

    {
      name = "bool_generate_stories",
      label = _("Generate Intermission Stories"),
      valuator = "button",
      default = 1,
      tooltip = _("Generate intermission stories as well. " ..
      "ZDoom Specials must be turned on or intermission will be ignored without MAPINFO structs.\n\n"..
      "Not guaranteed to make authentic stories and will totally hallu"),
      priority = 97,
      gap = 1
    },

    {
      name = "bool_listener_check",
      label = _("Startup Listener Check"),
      valuator = "button",
      default = 1,
      tooltip = _("Enables or disables Ollama instance check before level generation begins for speed. " ..
      "When turning this off, be absolutely sure Ollama is running or you may get end errors, wasting your generated level."),
      priority = 96,
    }
  }
}
