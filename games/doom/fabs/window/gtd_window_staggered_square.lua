PREFABS.Window_staggered_square_1 =
{
  file   = "window/gtd_window_tall_and_glassy.wad",
  map    = "MAP01",

  group  = "gtd_window_staggered_square",

  prob   = 50,

  where  = "edge",
  seed_w = 1,

  height = 96,
  deep   = 16,
  over   = 16,

  passable = true,

  bound_z1 = 0,
  bound_z2 = 96,

  z_fit = "top",
}

PREFABS.Window_staggered_square_2 =
{
  template = "Window_staggered_square_1",
  map      = "MAP02",

  seed_w   = 2,
}

PREFABS.Window_staggered_square_3 =
{
  template = "Window_staggered_square_1",
  map      = "MAP03",

  seed_w   = 3,
}
