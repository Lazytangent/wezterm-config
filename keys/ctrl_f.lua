local wezterm = require("wezterm")

local action = wezterm.action

return {
  {key="b", action={Multiple={
    "IncreaseFontSize",
    "IncreaseFontSize",
    "IncreaseFontSize",
    "IncreaseFontSize",
  }}}
}
