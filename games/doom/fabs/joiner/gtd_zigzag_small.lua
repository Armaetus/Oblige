PREFABS.Joiner_gtd_zigzag_small =
{
  file   = "joiner/gtd_zigzag_small.wad",
  map    = "MAP01",

  prob   = 200,
  style  = "steepness",
  theme  = "!hell",

  env      = "!cave",
  neighbor = "!cave",

  where  = "seeds",
  shape  = "I",

  seed_w = 2,
  seed_h = 1,

  deep   = 16,
  over   = 16,

  x_fit  = "frame",
  y_fit  = { 64,96 },

  delta_h  = 64,
  nearby_h = 192,
  can_flip = true,
}

PREFABS.Joiner_gtd_zigzag_small_mirrored =
{
  template = "Joiner_gtd_zigzag_small",
  map      = "MAP02"
}

--

PREFABS.Joiner_gtd_zigzag_small_hell =
{
  template = "Joiner_gtd_zigzag_small",

  theme = "hell",

  tex_GRAY7 = "MARBLE2",
  tex_STEP5 = "MARBLE1",
  tex_LITE3 = "FIREWALA",
  flat_FLAT1 = "DEM1_5",
  flat_CEIL3_3 = "DEM1_6"
}

PREFABS.Joiner_gtd_zigzag_small_mirrored_hell =
{
  template = "Joiner_gtd_zigzag_small",
  map = "MAP02",

  theme = "hell",

  tex_GRAY7 = "MARBLE2",
  tex_STEP5 = "MARBLE1",
  tex_LITE3 = "FIREWALA",
  flat_FLAT1 = "DEM1_5",
  flat_CEIL3_3 = "DEM1_6"
}
