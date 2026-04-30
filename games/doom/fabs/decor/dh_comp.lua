--
-- Derek's indoor techy computer thing
--

PREFABS.Decor_dittohead_computer =
{
  file   = "decor/dh_comp.wad",
  map    = "MAP01",

  prob   = 5000,
  theme  = "!hell",
  env    = "building",

  

  where  = "point",
  size   = 128,
  height = 160,

  bound_z1 = 0,
  bound_z2 = 160,

  z_fit  = { 128,136 }
}

--

-- this is just a grouped version of dittohead's original fab so it appears
-- logically alongside similar-looking fabs too
PREFABS.Decor_gtd_dh_comp_grouped =
{
  template = "Decor_dittohead_computer",

  group = "gtd_dh_comp",
}
