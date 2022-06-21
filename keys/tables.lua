local wezterm = require("wezterm")
local ctrl_f = require("keys.ctrl_f")
local ctrl_s = require("keys.ctrl_s")

local action = wezterm.action

return {
  localleader = {
    {key="Escape", action="PopKeyTable"},
  },

  launchers = {
    {key="d", action="ShowLauncher"},
    {key="Escape", action="PopKeyTable"},
  },

  ctrl_f = ctrl_f,
  ctrl_s = ctrl_s,
}
