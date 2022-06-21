local wezterm = require("wezterm")

local action = wezterm.action

return {
  {key="b", action=action.Multiple{
    action.IncreaseFontSize,
    action.IncreaseFontSize,
    action.IncreaseFontSize,
    action.IncreaseFontSize,
  }},
}
