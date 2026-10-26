PREFABS.Joiner_gtd_door_diagonal_1x2 =
{
  file = "joiner/gtd_joiner_doors.wad",
  map = "MAP01",

  kind = "joiner",
  style = "doors",

  prob = 75,

  theme = "!hell",

  where  = "seeds",
  shape  = "I",

  seed_w = 2,
  seed_h = 1,

  deep = 16,
  over = 16,

  x_fit = "frame",
  y_fit = "frame"
}

PREFABS.Joiner_gtd_door_diagonal_2x2 =
{
  template = "Joiner_gtd_door_diagonal_1x2",
  map = "MAP02",

  seed_h = 2,

  y_fit = {16,20 , 268,272}
}

PREFABS.Joiner_gtd_door_diagonal_1x2_hell =
{
  template = "Joiner_gtd_door_diagonal_1x2",
  map = "MAP01",

  prob = 80,

  seed_h = 2,

  theme = "hell",

  tex_SUPPORT2 = "SUPPORT3",
  tex_SPCDOOR3 = "SPCDOOR4",
  flat_FLOOR4_6 = "RROCK12",
  flat_FLAT1 = "CEIL5_2"
}

PREFABS.Joiner_gtd_door_diagonal_2x2_hell =
{
  template = "Joiner_gtd_door_diagonal_1x2",
  map = "MAP02",

  prob = 80 * 4,

  seed_h = 2,

  theme = "hell",

  y_fit = {16,20 , 268,272},

  tex_SUPPORT2 = "SUPPORT3",
  tex_SPCDOOR3 = "SPCDOOR4",
  flat_FLOOR4_6 = "RROCK12",
  flat_FLAT1 = "CEIL5_2"
}
