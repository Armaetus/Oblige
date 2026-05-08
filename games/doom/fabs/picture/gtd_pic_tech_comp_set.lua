PREFABS.Pic_tech_comp_console_1 =
{
  file = "picture/gtd_pic_tech_comp_set.wad",
  map = "MAP01",

  prob = 5000,

  group = "gtd_computers",

  where = "seeds",
  height = 128,

  seed_w = 2,
  seed_h = 1,

  deep = 16,

  bound_z1 = 0,
  bound_z2 = 128,

  x_fit = { 124,132 },
  y_fit = { 16,72 }
}

PREFABS.Pic_tech_comp_console_compshawn =
{
  template = "Pic_tech_comp_console_1",
  map = "MAP02",

  group = "gtd_computers_shawn",

  y_fit = { 20,108 }
}

PREFABS.Pic_tech_comp_console_compstation =
{
  template = "Pic_tech_comp_console_1",
  map = "MAP03",

  group = "gtd_computers_compsta",

  y_fit = { 20,108 },

  tex_COMPSTA3 =
  {
    COMPSTA3 = 1,
    COMPSTA4 = 1,
    COMPSTA5 = 1,
    COMPSTA6 = 1,
    COMPSTA7 = 1,
    COMPSTA8 = 1,
    COMPSTA9 = 1,
    COMPSTAA = 1,
    COMPSTAB = 1
  },

  tex_COMPSTA4 =
  {
    COMPSTA3 = 1,
    COMPSTA4 = 1,
    COMPSTA5 = 1,
    COMPSTA6 = 1,
    COMPSTA7 = 1,
    COMPSTA8 = 1,
    COMPSTA9 = 1,
    COMPSTAA = 1,
    COMPSTAB = 1
  },

  tex_COMPSTA5 =
  {
    COMPSTA3 = 1,
    COMPSTA4 = 1,
    COMPSTA5 = 1,
    COMPSTA6 = 1,
    COMPSTA7 = 1,
    COMPSTA8 = 1,
    COMPSTA9 = 1,
    COMPSTAA = 1,
    COMPSTAB = 1
  }
}

--

PREFABS.Pic_tech_data_center_pic_1 =
{
  template = "Pic_tech_comp_console_1",
  map = "MAP04",

  group = "gtd_data_center",

  x_fit = "frame",
  y_fit = "top",

  bound_z2 = 96,

  tex_DFAN1 = "METAL5"
}

PREFABS.Pic_tech_data_center_pic_1_EPIC =
{
  template = "Pic_tech_comp_console_1",
  map = "MAP04",

  replaces = "Pic_tech_data_center_pic_1",
  texture_pack = "armaetus",

  group = "gtd_data_center",

  x_fit = "frame",
  y_fit = "top",

  bound_z2 = 96
}

PREFABS.Pic_tech_data_center_pic_2 =
{
  template = "Pic_tech_comp_console_1",
  map = "MAP05",

  group = "gtd_data_center",

  x_fit = "frame",
  y_fit = "top",

  bound_z2 = 96
}

PREFABS.Pic_tech_data_center_pic_3_compscreen =
{
  template = "Pic_tech_comp_console_1",
  map = "MAP06",

  prob = 2500,

  group = "gtd_data_center",
  texture_pack = "armaetus",

  x_fit = "frame",
  y_fit = "top",

  bound_z2 = 96
}
