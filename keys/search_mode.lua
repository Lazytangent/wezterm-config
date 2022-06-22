local wezterm = require("wezterm")
local action = wezterm.action

return {
  {key="Escape", mods="NONE", action=action.CopyMode("Close")},
  {key="Enter",  mods="NONE", action=action.ActivateCopyMode},

  -- Defaults
  {key="UpArrow",   mods="NONE", action=action.CopyMode("PriorMatch")},
  {key="p",         mods="CTRL", action=action.CopyMode("PriorMatch")},
  {key="PageUp",    mods="NONE", action=action.CopyMode("PriorMatchPage")},
  {key="PageDown",  mods="NONE", action=action.CopyMode("NextMatchPage")},
  {key="n",         mods="CTRL", action=action.CopyMode("NextMatchPage")},
  {key="DownArrow", mods="NONE", action=action.CopyMode("NextMatch")},
  {key="r",         mods="CTRL", action=action.CopyMode("CycleMatchType")},
  {key="u",         mods="CTRL", action=action.CopyMode("ClearPattern")}
}
