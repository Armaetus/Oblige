CUSTOM_GAME_LENGTH = {}

function CUSTOM_GAME_LENGTH.setup(self)

    module_param_up(self)
  
end

OB_MODULES["length_params"] =
{

  name = "length_params",

  label = _("Game Length Options"),

  where = "experimental",
  game = {doom2=1,tnt=1,plutonia=1},
  priority = 5,

  tooltip = _("Alter the amount of levels used with the Full Game length option. Will probably break something."),

  hooks =
  {
    setup = CUSTOM_GAME_LENGTH.setup,
  },

  options =
  {
    {
      name = "float_full_game_length",
      label = _("Full Game Length"),
      valuator = "slider",
      units = _(" Levels"),
      min = 1,
      max = 100,
      increment = 1,
      default = 32,
      tooltip = _("Sets the number of levels in a full game. May cause issues if this value does not match the original game."),
      priority = 101,
    },
  },
}