PREFABS.Stair_gtd_lift_128_3d =
{
  file = "stairs/gtd_steepnesses_128_3d_floor.wad",
  map = "MAP01",

  prob = 25, --25

  engine = "zdoom",

  style = "steepness",

  where = "seeds",
  shape = "I",

  seed_w = 1,
  seed_h = 1,

  x_fit = { 28,32 , 64,68 , 96,100 },
  y_fit = { 20,24 , 64,68 },

  bound_z1 = 0,

  delta_h = 128
}

PREFABS.Stair_gtd_stairs_128_3d =
{
  template = "Stair_gtd_lift_128_3d",
  map = "MAP02",

  x_fit = { 28,32 , 64,68 , 96,100 },
  y_fit = { 20,24 },

  seed_h = 2,

  bound_z1 = 0,

  delta_h = 128
}

PREFABS.Stair_gtd_ladder_128_3d =
{
  template = "Stair_gtd_lift_128_3d",
  map = "MAP03",

  x_fit = { 28,32 , 64,68 , 96,100 },
  y_fit = { 20,24 , 64,68 },

  bound_z1 = 0,

  delta_h = 128
}

PREFABS.Stair_gtd_teleporterct_128_3d =
{
  template = "Stair_gtd_lift_128_3d",
  map = "MAP03",

  x_fit = { 28,32 , 96,100 },
  y_fit = { 20,24 },

  bound_z1 = 0,

  delta_h = 128
}
