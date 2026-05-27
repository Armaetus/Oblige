PREFABS.Joiner_curve_door_tech =
{
  file = "joiner/curve_door.wad",
  map = "MAP01",
  where = "seeds",

  style = "doors",
  theme = "tech",

  prob = 100,

  shape = "L",
  seed_h = 2,
  seed_w = 2,

  tex_BIGDOOR1 =
  {
    BIGDOOR1 = 1,
    BIGDOOR2 = 1,
    BIGDOOR3 = 1,
    BIGDOOR4 = 1,
    SPCDOOR3 = 1
  }
}

PREFABS.Joiner_curve_door_urban =
{
  template = "Joiner_curve_door_tech",

  theme = "urban",

  tex_BIGDOOR1 =
  {
    BIGDOOR1 = 1,
    BIGDOOR2 = 1,
    BIGDOOR3 = 1,
    BIGDOOR4 = 1,
    SPCDOOR3 = 1,

    WOODMET1 = 1,
    WOODMET2 = 1,
    BIGDOOR5 = 1,
    BIGDOOR6 = 1,
    BIGDOOR7 = 1
  },

  tex_SUPPORT2 = "SUPPORT3"
}

PREFABS.Joiner_curve_door_hell =
{
  template = "Joiner_curve_door_tech",

  theme = "hell",

  tex_BIGDOOR1 =
  {
    WOODMET1 = 1,
    WOODMET2 = 1,
    BIGDOOR5 = 1,
    BIGDOOR6 = 1,
    BIGDOOR7 = 1
  },

    tex_SUPPORT2 = "SUPPORT3"
}
