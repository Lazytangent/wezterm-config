local action = require("wezterm").action

return {
  {key="s", mods="CTRL", action=action.SendString("\x13")},

  {key="h", action=action.AdjustPaneSize{"Left", 5}},
  {key="j", action=action.AdjustPaneSize{"Down", 5}},
  {key="k", action=action.AdjustPaneSize{"Up", 5}},
  {key="l", action=action.AdjustPaneSize{"Right", 5}},
  {key=",", action=action.MoveTabRelative(-1)},
  {key=".", action=action.MoveTabRelative(1)},
}
