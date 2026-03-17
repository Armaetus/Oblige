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

--

PREFABS.Beam_arched_angular =
{
  template = "Beam_arched",
  map    = "MAP05",

  group = "beam_arch_angular"
}

PREFABS.Beam_arched_angular_diagonal =
{
  template = "Beam_arched",
  map    = "MAP06",

  where  = "diagonal",

  group = "beam_arch_angular",
}

--

PREFABS.Beam_arched_angular_fixed =
{
  template = "Beam_arched",
  map    = "MAP05",

  group = "beam_arch_angular_fixed",
  
  z_fit = "top"
}

PREFABS.Beam_arched_angular_diagonal_fixed =
{
  template = "Beam_arched",
  map    = "MAP06",

  where  = "diagonal",

  group = "beam_arch_angular_fixed",
  
  z_fit = "top"
}
