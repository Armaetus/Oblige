--
--  item closets
--

--an item forgotten in a grocery store
PREFABS.Item_dem_grocerystore_closet =
{
  file  = "item/dem_item_closets.wad",
  map   = "MAP04",

  port = "zdoom",

  theme = "urban",
  env   = "outdoor",
  prob  = 100,

  texture_pack = "armaetus",
  replaces = "Item_dem_grocerystore_closet_vanilla",

  where  = "seeds",
  seed_w = 3,
  seed_h = 2,

  deep = 16,
  over = -16,

  x_fit = "frame",
  y_fit  = "frame",

  tex_BRICK9 = {
    BRICK1=50, BRICK10=50, BRICK11=50,
    BRICK2=50, BRICK4=50,
    BRICK6=50, BRICK7=50, BRICK8=50,
    STONE2=50, STUCCO=50, STUCCO1=50,
    STUCCO3=50, TANROCK2=50, TANROCK3=50,
    SHAWN2=50,
  },

  thing_59 =
  {
    hang_twitching = 50,
    hang_torso = 50,
    hang_leg   = 50,
    hang_leg_gone = 50,
  },

  thing_62 =
  {
    hang_twitching = 50,
    hang_torso = 50,
    hang_leg   = 50,
    hang_leg_gone = 50,
  },

  thing_12 =
  {
    hang_twitching = 50,
    hang_torso = 50,
    hang_leg   = 50,
    hang_leg_gone = 50,
  }
}

PREFABS.Item_dem_grocerystore_closet_vanilla =
{
  file  = "item/dem_item_closets.wad",
  map   = "MAP04",

  port = "zdoom",

  theme = "urban",
  env   = "outdoor",
  prob  = 100,

  where  = "seeds",
  seed_w = 3,
  seed_h = 2,

  deep = 16,
  over = -16,

  x_fit = "frame",
  y_fit  = "frame",

  tex_BRICK9 = {
    BRICK1=50, BRICK10=50, BRICK11=50,
    BRICK2=50, BRICK4=50,
    BRICK6=50, BRICK7=50, BRICK8=50,
    STONE2=50, STUCCO=50, STUCCO1=50,
    STUCCO3=50, TANROCK2=50, TANROCK3=50,
    SHAWN2=50,
  },

  thing_59 =
  {
    hang_twitching = 50,
    hang_torso = 50,
    hang_leg   = 50,
    hang_leg_gone = 50,
  },

  thing_62 =
  {
    hang_twitching = 50,
    hang_torso = 50,
    hang_leg   = 50,
    hang_leg_gone = 50,
  },

  thing_12 =
  {
    hang_twitching = 50,
    hang_torso = 50,
    hang_leg   = 50,
    hang_leg_gone = 50,
  },

  tex_DNSTOR05 = "STEP4",
  tex_DNSTOR09 = "STEP4"
}


--an elevator shaft with an item
PREFABS.Item_dem_elevatorshaft_closet =
{
  file   = "item/dem_item_closets.wad",
  map    = "MAP05",

  port = "zdoom",

  prob = 50,
  skip_prob = 50,

  theme  = "!hell",

  env      = "building",

  where  = "seeds",
  seed_w = 2,
  seed_h = 2,

  deep = 16,

  x_fit = "frame",
  y_fit  = "frame",

  texture_pack = "armaetus",

  tex_BROWN1 = {
    GRAY1=50, GRAY4=50, GRAY5=50, GRAY6=50,
    GRAY7=50, GRAY8=50, GRAY9=50, CEMENT3=50,
    CEMENT7=50,
    CEM01=50, CEM07=50, CEM09=50, PIPE2=50,
    PIPE4=50, SLADWALL=50, TEKLITE=50, BROWN3=50,
    MET2=50, METAL6=50, METAL7=50, PIPEDRK1=50,
    SHAWGRY4=50, SHAWN01C=50, SHAWN01F=50,
    SHAWVEN2=50, SHAWVENT=50,
  }
}

--a corrupted elevator shaft with an item
PREFABS.Item_dem_elevatorshaftcorr_closet =
{
  file   = "item/dem_item_closets.wad",
  map    = "MAP06",

  port = "zdoom",

  prob   = 50,
  skip_prob = 50,

  theme  = "!hell",
  env    = "building",
  where  = "seeds",

  seed_w = 2,
  seed_h = 2,

  deep = 16,

  x_fit = "frame",
  y_fit = "top",

  texture_pack = "armaetus",

  tex_BROWN1 = {
    GRAY1=50, GRAY4=50, GRAY5=50, GRAY6=50,
    GRAY7=50, GRAY8=50, GRAY9=50, CEMENT3=50,
    CEMENT7=50,
    CEM01=50, CEM07=50, CEM09=50, PIPE2=50,
    PIPE4=50, SLADWALL=50, TEKLITE=50, BROWN3=50,
    MET2=50, METAL6=50, METAL7=50, PIPEDRK1=50,
    SHAWGRY4=50, SHAWN01C=50, SHAWN01F=50,
    SHAWVEN2=50, SHAWVENT=50,
  }
}

--a living room with an item
PREFABS.Item_dem_living_room_closet =
{
  file   = "item/dem_item_closets.wad",
  map    = "MAP07",

  port = "zdoom",

  prob   = 2000,

  theme  = "urban",

  env      = "outdoor",

  where  = "seeds",
  seed_w = 3,
  seed_h = 2,

  deep = 16,

  x_fit = "frame",
  y_fit = "frame",

  tex_BRICK9 = {
    BRICK1=50, BRICK10=50, BRICK11=50,
    BRICK2=50, BRICK4=50,
    BRICK6=50, BRICK7=50, BRICK8=50,
    BIGBRIK1=50, BIGBRIK2=50, STONE2=50,
    STUCCO=50,  STUCCO1=50,  STUCCO3=50,
  }
}

--a kitchen with an item hidden behind the table
PREFABS.Item_dem_kitchen_closet =
{
  file = "item/dem_item_closets.wad",
  map = "MAP08",

  prob = 7500,

  theme = "urban",

  env      = "outdoor",

  where = "seeds",

  seed_w = 2,
  seed_h = 3,

  deep = 16,

  x_fit = "frame",
  y_fit  = "frame",

  tex_BRICK9 = {
    BRICK1=50, BRICK10=50, BRICK11=50,
    BRICK2=50, BRICK4=50,
    BRICK6=50, BRICK7=50, BRICK8=50,
    BIGBRIK1=50, BIGBRIK2=50, STONE2=50,
    STUCCO=50, STUCCO1=50, STUCCO3=50,
  }
}

--a bedroom with an hidden item
PREFABS.Item_dem_bedroom_closet =
{
  file = "item/dem_item_closets.wad",
  map = "MAP09",

  prob = 2000,

  theme = "urban",

  texture_pack = "armaetus",
  replaces = "Item_dem_bedroom_closet_vanilla",

  port = "zdoom",

  env      = "outdoor",

  where = "seeds",

  seed_w = 3,
  seed_h = 2,

  deep = 16,

  x_fit = "frame",
  y_fit  = "frame",

  tex_BRICK9 = {
    BRICK1=50, BRICK10=50, BRICK11=50,
    BRICK2=50, BRICK4=50,
    BRICK6=50, BRICK7=50, BRICK8=50,
    BIGBRIK1=50, BIGBRIK2=50, STONE2=50,
    STUCCO=50, STUCCO1=50, STUCCO3=50,
  }
}

PREFABS.Item_dem_bedroom_closet_vanilla =
{
  file = "item/dem_item_closets.wad",
  map = "MAP09",

  prob = 2000,

  theme = "urban",

  port = "zdoom",

  env      = "outdoor",

  where = "seeds",

  seed_w = 3,
  seed_h = 2,

  deep = 16,

  x_fit = "frame",
  y_fit  = "frame",

  tex_BRICK9 = {
    BRICK1=50, BRICK10=50, BRICK11=50,
    BRICK2=50, BRICK4=50,
    BRICK6=50, BRICK7=50, BRICK8=50,
    BIGBRIK1=50, BIGBRIK2=50, STONE2=50,
    STUCCO=50, STUCCO1=50, STUCCO3=50,
  },

  tex_SKIN4 = "SKIN2",
	tex_GOTH13 = "STONE4",
	tex_COLLITE1 = "SHAWN2",

  flat_GRENFLOR = "GRASS2",

  tex_EVILFACA = "WOOD4",
  tex_TVSNOW01 = "SPACEW3"
}

--an appartment stairwell with a ritual and an item
PREFABS.Item_dem_stairwell_closet =
{
  file = "item/dem_item_closets.wad",
  map = "MAP10",

  prob = 10000,

  theme = "urban",

  port = "zdoom",

  env      = "outdoor",

  where = "seeds",

  seed_w = 2,
  seed_h = 3,

  deep = 16,

  x_fit = "frame",
  y_fit  = "frame",

  tex_BRICK9 = {
    BRICK1=50, BRICK10=50, BRICK11=50,
    BRICK2=50, BRICK4=50,
    BRICK6=50, BRICK7=50, BRICK8=50,
    BIGBRIK1=50, BIGBRIK2=50, STONE2=50,
    STUCCO=50, STUCCO1=50, STUCCO3=50,
  }
}

--a bar with an item hidden behind of it
PREFABS.Item_dem_bar_closets =
{
  file = "item/dem_item_closets.wad",
  map = "MAP11",

  port = "zdoom",

  prob = 2000,

  theme = "urban",
  env = "outdoor",
  where = "seeds",

  texture_pack = "armaetus",
  replaces = "Item_dem_bar_closets_vanilla",

  seed_w = 3,
  seed_h = 2,

  deep = 16,

  x_fit = "frame",
  y_fit = "frame",

  tex_STARTAN1 = {
    BRICK1=50, BRICK12=50, BRICK11=50,
    BRICK2=50, BRICK4=50,
    BRICK6=50, BRICK7=50, BRICK8=50,
    STONE2=50, SHAWN4=50, SHAWN5=50,
    STUCCO=50, STUCCO1=50, STUCCO3=50, 
    STARGR1=50, GRAY7=50,
    PANEL6=50, BRIKS40=50, BRIKS43=50,
    GOTH16=50, GOTH31=50, WD03=50,
  }
}

PREFABS.Item_dem_bar_closets_vanilla =
{
  file = "item/dem_item_closets.wad",
  map = "MAP11",

  port = "zdoom",

  prob = 2000,

  theme = "urban",
  env = "outdoor",
  where = "seeds",

  seed_w = 3,
  seed_h = 2,

  deep = 16,

  x_fit = "frame",
  y_fit = "frame",

  tex_STARTAN1 = {
    BRICK1=50, BRICK12=50, BRICK11=50,
    BRICK2=50, BRICK4=50,
    BRICK6=50, BRICK7=50, BRICK8=50,
    STONE2=50, STARGR1=50, GRAY7=50,
    STUCCO=50, STUCCO1=50, STUCCO3=50, 
  },
  tex_TEKGRDR = "SHAWN1",
  tex_SHAWN4  = "SHAWN2",
  tex_MIDSPAC5 = "MIDSPACE"
}

--a waiting room with an item on the desk
PREFABS.Item_dem_waiting_room_closets =
{
  file = "item/dem_item_closets.wad",
  map = "MAP12",

  port = "zdoom",

  prob = 2000,

  theme = "urban",
  env = "outdoor",

  where = "seeds",

  seed_w = 3,
  seed_h = 2,

  deep = 16,

  x_fit = "frame",
  y_fit = "frame",

  texture_pack = "armaetus",
  replaces = "Item_dem_waiting_room_closets_vanilla",

  tex_STARTAN1 = {
    BRICK1=50, BRICK12=50, BRICK11=50,
    BRICK2=50, BRICK4=50,
    BRICK6=50, BRICK7=50, BRICK8=50,
    STONE2=50, SHAWN4=50, SHAWN5=50,
    STUCCO=50,  STUCCO1=50,  STUCCO3=50, STARGR1=50, GRAY7=50,
    PANEL6=50, BRIKS40=50, BRIKS43=50,
    GOTH16=50, GOTH31=50, WD03=50,
  },

  tex_CPAQLRRE = {
    CPAQLRRE=50, CPGARDEN=50, CPGARDN2=50,
    CPHRSEMN=50, CPHRSMN2=50,
  }
}

PREFABS.Item_dem_waiting_room_closets_vanilla =
{
  file = "item/dem_item_closets.wad",
  map = "MAP12",

  port = "zdoom",

  prob = 2000,

  theme = "urban",
  env = "outdoor",

  where = "seeds",

  seed_w = 3,
  seed_h = 2,

  deep = 16,

  x_fit = "frame",
  y_fit = "frame",

  tex_STARTAN1 = {
    BRICK1=50, BRICK12=50, BRICK11=50,
    BRICK2=50, BRICK4=50,
    BRICK6=50, BRICK7=50, BRICK8=50,
    STONE2=50, STARGR1=50, GRAY7=50,
    STUCCO=50, STUCCO1=50, STUCCO3=50, 
  },
  tex_CPAQLRRE = {
    SKY1 = 50, SKY2 = 50, SKY3 = 50
  },
  flat_SNOW5 = "FLAT19",
  flat_FASHWITE = "FLAT23",
  flat_GRENFLOR = "RROCK20",
  tex_SHAWN4 = "SHAWN2",
}

--a raided electronic store with an item
PREFABS.Item_dem_electronic_store_closets =
{
  file = "item/dem_item_closets.wad",
  map    = "MAP13",

  port = "zdoom",

  prob   = 2000,
  theme  = "urban",
  env      = "outdoor",
  where  = "seeds",

  seed_w = 3,
  seed_h = 2,

  deep = 16,

  x_fit = "frame",
  y_fit  = "frame",

  texture_pack = "armaetus",

  tex_STARTAN1 = {
    BRICK1=50, BRICK12=50, BRICK11=50,
    BRICK2=50, BRICK4=50,
    BRICK6=50, BRICK7=50, BRICK8=50,
    STONE2=50, SHAWN4=50, SHAWN5=50,
    STUCCO=50,  STUCCO1=50,  STUCCO3=50, STARGR1=50,
    PANEL6=50, BRIKS40=50, BRIKS43=50,
    GOTH16=50, GOTH31=50, WD03=50,
  }

}

--a raided cornerstore with only one item remaining
PREFABS.Item_dem_cornerstore_closets =
{
  file = "item/dem_item_closets.wad",
  map = "MAP14",

  port = "zdoom",

  prob = 10000,

  theme = "urban",

  env = "outdoor",

  where = "seeds",

  seed_w = 2,
  seed_h = 3,

  deep = 16,

  x_fit = "frame",
  y_fit = "frame",

  texture_pack = "armaetus",
  replaces = "Item_dem_cornerstore_closets_vanilla",

  tex_STARTAN1 = {
    BRICK1=50, BRICK12=50, BRICK11=50,
    BRICK2=50, BRICK4=50,
    BRICK6=50, BRICK7=50, BRICK8=50,
    STONE2=50, STUCCO=50,  STUCCO1=50,
    STUCCO3=50, STARGR1=50,
    PANEL6=50, BRIKS40=50, BRIKS43=50,
    GOTH31=50, BRICK9=50,
    BRICK10=50,TANROCK2=50, TANROCK3=50,
  }
}

PREFABS.Item_dem_cornerstore_closets_vanilla =
{
  file = "item/dem_item_closets.wad",
  map = "MAP14",

  port = "zdoom",

  prob = 10000,

  theme = "urban",

  env = "outdoor",

  where = "seeds",

  seed_w = 2,
  seed_h = 3,

  deep = 16,

  x_fit = "frame",
  y_fit = "frame",

  tex_STARTAN1 = {
    BRICK1=50, BRICK12=50, BRICK11=50,
    BRICK2=50, BRICK4=50,
    BRICK6=50, BRICK7=50, BRICK8=50,
    STONE2=50, STUCCO=50,  STUCCO1=50,
    STUCCO3=50, STARGR1=50,
    PANEL6=50, TANROCK2=50, TANROCK3=50,
    BRICK10=50, BRICK9=50,
  },

  tex_DNSTOR05 = "STEP4",
  tex_DNSTOR06 = "STEP4",
  tex_DNSTOR09 = "STEP4",
  tex_MIDSPAC5 = "MIDSPACE"
}

--a fairly intact bookstore with an item inside
PREFABS.Item_dem_bookstore_closets =
{
  file = "item/dem_item_closets.wad",
  map = "MAP15",

  port = "zdoom",

  prob = 10000,

  theme = "urban",

  env = "outdoor",

  where = "seeds",

  seed_w = 2,
  seed_h = 3,

  deep = 16,

  x_fit = "frame",
  y_fit = "frame",

  texture_pack = "armaetus",
  replaces = "Item_dem_bookstore_closets_vanilla",

  tex_STARTAN1 = {
    BRICK1=50, BRICK12=50,
    BRICK2=50, BRICK4=50,
    BRICK6=50, BRICK7=50, BRICK8=50,
    STUCCO=50, STUCCO1=50,
    STUCCO3=50, BRIKS43=50,
    GOTH31=50,GOTH16=50,GOTH02=50,
    BRICK9=50, TANROCK2=50, TANROCK3=50,
  }
}

PREFABS.Item_dem_bookstore_closets_vanilla =
{
  file = "item/dem_item_closets.wad",
  map = "MAP15",

  port = "zdoom",

  prob = 10000,

  theme = "urban",

  env = "outdoor",

  where = "seeds",

  seed_w = 2,
  seed_h = 3,

  deep = 16,

  x_fit = "frame",
  y_fit = "frame",

  tex_STARTAN1 = {
    BRICK1=50, BRICK12=50,
    BRICK2=50, BRICK4=50,
    BRICK6=50, BRICK7=50, BRICK8=50,
    STUCCO=50, STUCCO1=50,
    STUCCO3=50,BRICK9=50, 
    TANROCK2=50, TANROCK3=50,
  },

  tex_PANBOOK1 = "PANBOOK",
  tex_PANBOOK3 = "PANBOOK",
  tex_PANBOOK4 = "PANBOOK",
  tex_FENCE9 = "MIDSPACE",
  flat_GATE4YL = "FLAT5_5",
  flat_GRENFLOR = "GRASS1",
}

---- natural shrine getting corrupted by demon with an item ----

PREFABS.Item_dem_shrine_closetC =
{
  file   = "item/dem_item_closets.wad",
  map    = "MAP18",

  port = "zdoom",

  prob   = 100,

  env = "cave",

  theme  = "!hell",

  where  = "seeds",


  seed_w = 3,
  seed_h = 2,

  deep   = 16,
  over   = -16,

  bound_z1 = 0,
  bound_z2 = 128,

  z_fit = { 56,64 },

  texture_pack = "armaetus",

}

PREFABS.Item_dem_shrine_closetN =
{
  template = "Item_dem_shrine_closetC",

  map = "MAP19",
  env = "nature",
  group = "natural_walls",


}


----Natural corner with old cabin that have enemies inside and an item----

PREFABS.Item_dem_cabin_closet =
{
  file   = "item/dem_item_closets.wad",
  map    = "MAP20",

  port = "zdoom",

  theme = "!hell",

  prob   = 100,

  env = "nature",

  group = "natural_walls",

  where  = "seeds",


  seed_w = 3,
  seed_h = 2,

  deep = 16,
  over = -16,

  bound_z1 = 0,
  bound_z2 = 128,

  z_fit = { 99,104 },

  texture_pack = "armaetus",

  thing_10 =
  {
    gibs = 50,
    gibbed_player = 50,
    pool_brains = 50,
    dead_player = 50,
    dead_zombie = 50,
    dead_shooter = 50,
    dead_imp = 50,
  }

}

----Natural corner with campsite that have an item----

PREFABS.Item_dem_campsiteC_closet =
{
  file   = "item/dem_item_closets.wad",
  map    = "MAP21",

  port = "zdoom",

  theme = "!hell",

  prob   = 100,
  env = "cave",

  where  = "seeds",

  seed_w = 3,
  seed_h = 2,

  deep = 16,
  over = -16,

  bound_z1 = 0,
  bound_z2 = 128,

  z_fit = { 64,72 },

  texture_pack = "armaetus",

}

PREFABS.Item_dem_campsiteN_closet =
{
  template  = "Item_dem_campsiteC_closet",
  map    = "MAP22",
  env = "nature",

  group = "natural_walls",
}

PREFABS.Item_dem_campsiteP_closet =
{
  template  = "Item_dem_campsiteC_closet",
  map    = "MAP23",
  env = "park",
}

----a concrete bunker with an item inside ----

PREFABS.Item_dem_bunker_closetP =
{
  file   = "item/dem_item_closets.wad",
  map    = "MAP24",

  port = "zdoom",

  game = "doom2",

  prob   = 100,

  theme  = "!hell",

  env = "park",

  where  = "seeds",

  seed_w = 3,
  seed_h = 2,

  deep   = 16,
  over   = -16,

  bound_z1 = 0,
  bound_z2 = 128,

  x_fit = "frame",
  y_fit  = "frame",
  z_fit = { 56,64 },

  texture_pack = "armaetus",


  thing_3004 =
  {
    nothing = 20,
    zombie = 50,
    shooter = 30,
    imp = 50,
    gunner = 20,
  }

}



PREFABS.Item_dem_bunker_closetC =
{
  template = "Item_dem_bunker_closetP",

  map = "MAP25",
  env    = "cave",
}

PREFABS.Item_dem_bunker_closetN =
{
  template = "Item_dem_bunker_closetP",

  map = "MAP26",
  env = "nature",
  group = "natural_walls",
}

----yards containg items ----

PREFABS.Item_dem_yard_closet1 =
{
  file   = "item/dem_item_closets.wad",
  map    = "MAP27",

  port = "zdoom",

  style = "traps",
  filter = "crushers",

  prob   = 10000,

  theme  = "urban",

  env = "outdoor",

  where  = "seeds",

  seed_w = 3,
  seed_h = 2,

  deep   = 16,
  over   = -16,

  height = 256,

  y_fit  = "top",
  z_fit  = "top",

  texture_pack = "armaetus",

  tex_CITY01 =
  {

    CITY01 = 50,
    CITY02 = 50,
    CITY03 = 50,
    CITY04 = 50,
    CITY05 = 50,
    CITY06 = 50,
    CITY07 = 50,
    CITY11 = 25,
    CITY12 = 25,
    CITY13 = 25,
    CITY14 = 25,
  },

  can_flip = true,

}

PREFABS.Item_dem_yard_closet2 =
{
  template = "Item_dem_yard_closet1",

  map = "MAP28",

  jump_crouch = true,

}

PREFABS.Item_dem_yard_closet3 =
{
  template = "Item_dem_yard_closet1",

  map = "MAP29",

  prob   = 12000,

  jump_crouch = true,

  seed_w = 4,
  seed_h = 2,

}

PREFABS.Item_dem_yard_closet4 =
{
  template = "Item_dem_yard_closet1",

  map = "MAP30",

  prob   = 12000,

  seed_w = 4,
  seed_h = 2,

  tex_BRICK9 = {
	BRICK1=50,
	BRICK10=50,
	BRICK11=50,
	BRICK2=50,
	BRICK4=50,
	BRICK6=50,
	BRICK7=50,
	BRICK8=50,
	BIGBRIK1=50,
	BIGBRIK2=50,
	STONE2=50,
	STONE3=50,
	BRICK12=50,
	BRICK5=50,
	BRONZE1=50,
	BROWN1=50,
	BROWN96=50,
	BROWNGRN=50,
	CEMENT7=50,
	CEMENT9=50,
    },

}

