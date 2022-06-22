local wezterm = require("wezterm")

local copy_mode = require("keys.copy_mode")
local ctrl_f = require("keys.ctrl_f")
local ctrl_s = require("keys.ctrl_s")

local action = wezterm.action

return {
  localleader = {
    {key="Escape", action=action.PopKeyTable},
  },

  launchers = {
    {key="d", action=action.ShowLauncher},
    {key="Escape", action=action.PopKeyTable},
  },

  copy_mode = copy_mode,
  ctrl_f = ctrl_f,
  ctrl_s = ctrl_s,
}
