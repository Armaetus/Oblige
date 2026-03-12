--
-- Beams, arched version.
--

PREFABS.Beam_arched =
{
  file   = "fence/beam_arched.wad",
  map    = "MAP01",

  group  = "beam_arched",

  kind   = "beam",

  prob   = 50,

  where  = "edge",

  deep   = 8,
  over   = 8,

  z_fit = "bottom",

  bound_z1 = 0,
  bound_z2 = 96
}

PREFABS.Beam_arched_diagonal =
{
  template = "Beam_arched",
  map    = "MAP02",

  where  = "diagonal"
}

--

PREFABS.Beam_arched_fixed_height =
{
  template = "Beam_arched",
  map    = "MAP01",

  group  = "beam_arched_fixed",

  z_fit = "top"
}

PREFABS.Beam_arched_diagonal_fixed_height =
{
  template = "Beam_arched",
  map    = "MAP02",

  where  = "diagonal",

  group  = "beam_arched_fixed",

  z_fit = "top"
}
