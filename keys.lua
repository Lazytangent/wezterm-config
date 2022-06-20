local wezterm = require("wezterm")

return {
  {key="s", mods="LEADER", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
  {key="v", mods="LEADER", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
  {key="x", mods="LEADER", action=wezterm.action{CloseCurrentPane={confirm=true}}},
  {key="]", mods="LEADER", action="ActivateCopyMode"},
  {key="n", mods="LEADER", action=wezterm.action{ActivateTabRelative=1}},
  {key="p", mods="LEADER", action=wezterm.action{ActivateTabRelative=-1}},

  {key="a", mods="LEADER|CTRL", action=wezterm.action{SendString="\x01"}},
}
