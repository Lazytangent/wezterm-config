local wezterm = require("wezterm")
local action = wezterm.action
local action_callback = wezterm.action_callback

return {
  {key="s", mods="CTRL", action=action.SendString("\x13")},

  {key="h", action=action.AdjustPaneSize{"Left", 5}},
  {key="j", action=action.AdjustPaneSize{"Down", 5}},
  {key="k", action=action.AdjustPaneSize{"Up", 5}},
  {key="l", action=action.AdjustPaneSize{"Right", 5}},
  {key=",", action=action.MoveTabRelative(-1)},
  {key=".", action=action.MoveTabRelative(1)},
  {key="1", action=action_callback(function(win, pane)
    local overrides = win:get_config_overrides() or {}
    if not overrides.harfbuzz_features then
      overrides.harfbuzz_features = {"calt=0", "clig=0", "liga=0"}
    else
      overrides.harfbuzz_features = nil
    end
    win:set_config_overrides(overrides)
  end)},
}
