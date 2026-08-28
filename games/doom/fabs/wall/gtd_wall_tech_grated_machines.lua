PREFABS.Wall_tech_grated_machines_plain =
{
  file = "wall/gtd_wall_tech_grated_machines.wad",
  map = "MAP01",

  prob = 50,

  group = "gtd_wall_grated_machines",

  where = "edge",
  deep = 16,
  height = 96,

  bound_z1 = 0,
  bound_z2 = 96,

  z_fit = "top",
}

PREFABS.Wall_tech_grated_machines_diagonal =
{
  template = "Wall_tech_grated_machines_plain",
  map = "MAP02",

  prob = 50,

  group = "gtd_wall_grated_machines",

  where = "diagonal",
}

--

PREFABS.Wall_tech_grated_machines_damaged_wall =
{
  template = "Wall_tech_grated_machines_plain",
  map = "MAP03",

  group = "gtd_wall_grated_machines_damaged_wall"
}

PREFABS.Wall_tech_grated_machines_damaged_wall_2 =
{
  template = "Wall_tech_grated_machines_plain",
  map = "MAP04",

  group = "gtd_wall_grated_machines_damaged_wall"
}

PREFABS.Wall_tech_grated_machines_damaged_wall_3 =
{
  template = "Wall_tech_grated_machines_plain",
  map = "MAP05",

  group = "gtd_wall_grated_machines_damaged_wall"
}

PREFABS.Wall_tech_grated_machines_damaged_diag_1 =
{
  template = "Wall_tech_grated_machines_plain",
  map = "MAP06",

  where = "diagonal",

  group = "gtd_wall_grated_machines_damaged_wall"
}

PREFABS.Wall_tech_grated_machines_damaged_diag_2 =
{
  template = "Wall_tech_grated_machines_plain",
  map = "MAP07",

  where = "diagonal",

  group = "gtd_wall_grated_machines_damaged_wall"
}
