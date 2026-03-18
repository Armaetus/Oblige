PREFABS.Wall_gtd_fireblue_wim_1 =
{
  file = "wall/gtd_wall_industrial_factory_set.wad",
  map = "MAP01",

  prob = 50,
  group = "gtd_fireblu_where_its_made",

  where = "edge",
  deep = 16,
  height = 96,

  bound_z1 = 0,
  bound_z2 = 96,

  z_fit = "top"
}

PREFABS.Wall_gtd_fireblue_wim_2 =
{
  template = "Wall_gtd_fireblue_wim_1",
  map = "MAP02",

  prob = 200
}

PREFABS.Wall_gtd_fireblue_wim_diag =
{
  template = "Wall_gtd_fireblue_wim_1",
  map = "MAP03",

  where = "diagonal"
}
