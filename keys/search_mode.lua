local wezterm = require("wezterm")
local action = wezterm.action

return {
  {key="Enter",  mods="NONE", action=action.ActivateCopyMode},
  {key="Escape", mods="NONE", action=action.CopyMode("Close")},

  -- Defaults
  {key="DownArrow", mods="NONE", action=action.CopyMode("NextMatch")},
  {key="PageDown",  mods="NONE", action=action.CopyMode("NextMatchPage")},
  {key="PageUp",    mods="NONE", action=action.CopyMode("PriorMatchPage")},
  {key="UpArrow",   mods="NONE", action=action.CopyMode("PriorMatch")},

  {key="c", mods="CTRL", action=action.CopyMode("Close")},
  {key="n", mods="CTRL", action=action.CopyMode("NextMatchPage")},
  {key="p", mods="CTRL", action=action.CopyMode("PriorMatch")},
  {key="r", mods="CTRL", action=action.CopyMode("CycleMatchType")},
  {key="u", mods="CTRL", action=action.CopyMode("ClearPattern")},
}
