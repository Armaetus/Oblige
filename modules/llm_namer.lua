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

  -- liquids
  otex_nukage = "nukage",
  otex_poop = "slime",

  -- room themes
  tech_Doom3_grey_hulls = "tech_Shiny"
}

LLM_NAME.semantics =
{
--[[ PRIMARY THEMES]]
  tech =
  {
    "The level evokes a cold industrial megastructure.",
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

  liminal_space =
  {
    "enigmatic transitional spaces",
    "hauntingly elegant corridors",
    "ethereal-looking halls",
    "beautiful eerie empty zones"
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
    "cold UAC-style facilities",
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
  }
}

LLM_NAME.temperature_range =
{
  tech  = {0.8, 0.9, 1.0},
  urban = {0.9, 1.0, 1.1},
  hell  = {1.0, 1.1, 1.2}
}

LLM_NAME.prompt_styles =
{
-- TECH
  tech =
  {
    "Generate a Doom map name that sounds like a cold industrial system still running after the end of its purpose.",

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

function LLM_NAME.setup(self)
  module_param_up(self)
end

function LLM_NAME.get_some_info(self, lev)

  ----------------------------------------------------------------------
  -- SEMANTIC HELPERS
  ----------------------------------------------------------------------

  local function get_semantic(v)
    local term = LLM_NAME.semantics_grouping[v] or v
    local pool = LLM_NAME.semantics[term]

    if pool then
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
    elseif ratio > 0.6 then return "mostly"
    elseif ratio > 0.4 then return "roughly half"
    end
    return nil
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

  local room_scores = {
    outdoor_vol = 0,
    building_vol = 0,
    park_vol = 0,
    cave_vol = 0
  }

  local total_vol = 0
  local level_openness = 0

  local function add_room_theme(R)
    if R.is_outdoor then return end

    local tab = R.theme
    if not tab then return end

    table.add_unique(room_themes, tab.name)
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

    level_openness = level_openness + (R.openness or 0)
  end

  ----------------------------------------------------------------------
  -- NORMALISE SCORES
  ----------------------------------------------------------------------

  if total_vol > 0 then
    for k, v in pairs(room_scores) do
      room_scores[k] = v / total_vol
    end
  end

  local room_count = #lev.rooms
  level_openness = room_count > 0 and (level_openness / room_count) or 0

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
      table.insert(lines, "The map is " .. c .. " " .. label .. ".\n")
    end
  end

  --add_ratio_line("outdoor_vol", "outdoors")
  --add_ratio_line("building_vol", "indoors")
  add_ratio_line("cave_vol", "a cave")
  add_ratio_line("park_vol", "natural terrain")

  ----------------------------------------------------------------------
  -- SHAPES
  ----------------------------------------------------------------------

  --[[if #shape_rules > 0 then
    table.insert(lines,
      "The map's layout is made of the following shape grammar rules: "
    )

    for _, rule in ipairs(shape_rules) do
      table.insert(lines, "* " .. rule .. "\n")
    end

    table.insert(lines, "\n")
  end]]

  ----------------------------------------------------------------------
  -- INDOOR DETAILS
  ----------------------------------------------------------------------

  if room_scores.building_vol > 0.33 and #room_themes > 0 then
    table.insert(lines, "The rooms in the map are made of ")

    local room_texts = {}
    for _, t in pairs(room_themes) do
      table.add_unique(room_texts, get_semantic(t))
    end
    table.insert(lines, to_phrase(room_texts))
  end

  if lev.preferred_wall_groups
    and lev.preferred_wall_groups[lev.theme_name]
    and room_scores.building_vol > 0.33 then

    local presence_v = rand.pick(
      {" populated with ", " made up of ", " with ", " have", " installed with",
      " constructed with ", "contains ", " build with "})
    table.insert(lines, presence_v)

    local prefab_texts = {}
    for set in pairs(lev.preferred_wall_groups[lev.theme_name]) do
      table.add_unique(prefab_texts, get_semantic(set))
    end
    table.insert(lines, to_phrase(prefab_texts))

    table.insert(lines, ".\n")
  end

  ----------------------------------------------------------------------
  -- OUTDOOR DETAILS
  ----------------------------------------------------------------------

  if lev.is_dark and room_scores.outdoor_vol > 0.33 then
    table.insert(lines, "The level takes place during a dark night.\n")
  end

  table.insert(lines,
    "The map has a " .. openness_description(level_openness) .. " layout.\n"
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

    if lev.outdoor_theme == "snow" then
      theme_lines = {
        "The exterior is frozen and snow covered.\n",
        "The map takes place in a frigid snowy environment.\n",
        "The outdoors are icy and windswept.\n"
      }

    elseif lev.outdoor_theme == "sand" then
      theme_lines = {
        "The map takes place in a scorching desert environment.\n",
        "The outdoors are dusty and sun blasted.\n",
        "The exterior is dry and desertlike.\n"
      }
    end

    if theme_lines then
      table.insert(lines, rand.pick(theme_lines))
    end
  end

  ----------------------------------------------------------------------
  -- LIQUIDS
  ----------------------------------------------------------------------

  if lev.liquid_usage ~= 0 then
    local liq_word
    if lev.liquid_usage > 0.8 then
      liq_word = " is overrun with "
    elseif lev.liquid_usage > 0.6 then
      liq_word = " abundant with "
    elseif lev.liquid_usage > 0.4 then
      liq_word = " has moderate  "
    elseif lev.liquid_usage > 0.2 then
      liq_word = " has scant "
    else
      liq_word = " has very sparse "
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

  table.insert(lines, "\n")

  table.insert(lines,
    "If the original name fits or sounds strong, reuse it.\n"
  )

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

    gui.debugf("LLM Namer: Parsed response:\n" .. response .. "\n")

    if not response then
      return nil
    end

    response = response:gsub("^%s+", "")
    response = response:gsub("%s+$", "")

    return response
  end

  -- main name generator capsule
  local function generate_level_name(level_data, theme_name)

    local style_line
    if LLM_NAME.prompt_styles[theme_name] then
      style_line = rand.pick(LLM_NAME.prompt_styles[theme_name]) .. "\n"
    else
      style_line = "Generate a name for a Doom map.\n"
    end

    local prompt = style_line ..
[[Feel free to use metaphor, mood, or unusual imagery.

Rules:
- 1 line only
- maximum 4 words
- no punctuation
- no explanation
- no extra text
- no quotes
]]..
level_data

    local pick_tmp
    if LLM_NAME.temperature_range[theme_name] then
      pick_tmp = rand.pick(LLM_NAME.temperature_range[theme_name])
    end

    return ask(prompt,
    {
      temperature = pick_tmp or 1.0,
      num_predict = rand.pick({6, 8, 10, 12})
    })
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

  if PARAM.bool_llm_namer == 1 then


    for _,epi in pairs(GAME.episodes) do
      for _,L in pairs(epi.levels) do
        local level_data = collect_level_data(L)
        local name = generate_level_name(level_data, L.theme_name)

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
        "This module uses Lua io.popen to access cURL, and may cause CMD to briefly appear. This is normal behavior.\n\n" ..
        "The module DOES NOT SEND DATA outside of your PC. " ..
        "This module will not work if you do not have libcurl as it communicates in RESTful API style.\n\n"),
      priority = 100,
    }
  }
}
