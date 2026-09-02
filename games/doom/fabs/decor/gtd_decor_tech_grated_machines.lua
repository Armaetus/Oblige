PREFABS.Decor_wall_grated_machines_pillar =
{
  file = "decor/gtd_decor_tech_grated_machines.wad",
  map = "MAP01",

  where = "point",

  group = "gtd_wall_grated_machines_damaged_wall",

  prob = 5000,

  size = 64,
  height = 96,

  bound_z1 = 0,
  bound_z2 = 96,

  z_fit = "top"
}

PREFABS.Decor_wall_grated_machines_pillar_broken =
{
  template = "Decor_wall_grated_machines_pillar",
  map = "MAP02",

  prob = 1000,

  z_fit = "nil"
}

PREFABS.Decor_wall_grated_machines_pillar_large_broken =
{
  template = "Decor_wall_grated_machines_pillar",
  map = "MAP03",

  prob = 7500,

  size = 96,

  z_fit = "nil"
}
