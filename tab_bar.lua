local wezterm = require("wezterm")

local right = utf8.char(0xe0ba)
local left = utf8.char(0xe0bc)

local SOLID_RIGHT_ARROW = utf8.char(0xe0b0)

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local title = wezterm.truncate_right(tab.active_pane.title, max_width-2)

  return {
    {Background={Color="#2b2042"}},
    {Foreground={Color="#eeeeee"}},
    {Text=left},
    {Foreground={Color="#eeeeee"}},
    {Text=title},
    {Background={Color="#0b0022"}},
    {Foreground={Color="#eeeeee"}},
    {Text=right},
  }
end)
