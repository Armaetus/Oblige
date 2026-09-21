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

  x_fit = { 56,72 },
  y_fit = { 20,24 , 80,84 },

  bound_z1 = 0,

  delta_h = 128
}

PREFABS.Stair_gtd_stairs_128_3d =
{
  template = "Stair_gtd_lift_128_3d",
  map = "MAP02",

  x_fit = { 56,72 },
  y_fit = { 20,24 , 100,104 },

  seed_h = 2,

  bound_z1 = 0,

  delta_h = 128
}
