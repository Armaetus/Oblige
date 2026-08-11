PREFABS.Decor_artsy_chequered_floor_1x =
{
  file   = "decor/gtd_decor_artsy_set.wad",
  map    = "MAP01",

  prob   = 5000,

  group = "gtd_generic_artsy_chequered",

  where  = "point",
  size   = 80,

  bound_z1 = 0
}

PREFABS.Decor_artsy_chequered_floor_2x =
{
  template = "Decor_artsy_chequered_floor_1x",
  map    = "MAP02",

  size   = 112
}

--

PREFABS.Decor_artsy_corpo_art =
{
  template = "Decor_artsy_chequered_floor_1x",
  map    = "MAP05",

  height = 129,

  group = "gtd_generic_artsy_corpo_art",

  size   = 88,

  bound_z2 = 128
}

PREFABS.Decor_artsy_corpo_art_2 =
{
  template = "Decor_artsy_chequered_floor_1x",
  map    = "MAP06",

  prob = 7500,

  height = 81,

  group = "gtd_generic_artsy_corpo_art",

  size   = 72,

  bound_z2 = 80
}

PREFABS.Decor_artsy_corpo_art_3 =
{
  template = "Decor_artsy_chequered_floor_1x",
  map    = "MAP07",

  prob = 7500,

  height = 65,

  group = "gtd_generic_artsy_corpo_art",

  size   = 72,

  bound_z2 = 64
}
