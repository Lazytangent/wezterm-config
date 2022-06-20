local wezterm = require("wezterm")

local right = utf8.char(0xe0bc)
local left = utf8.char(0xe0ba)

local remove_file = function(s)
  return string.gsub(s, "file://(.*)", "%1")
end

local replace_home = function(s)
  return string.gsub(s, "^/Users/petermai(.*)", "~%1")
end

local pad_with_space = function(s)
  return s .. " "
end

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local title_text = replace_home(remove_file(tab.active_pane.current_working_dir))
  local title = pad_with_space(tab.active_pane.pane_id .. ": " .. title_text)

  local right_edge_background = "#1e1e2e"
  local left_edge_background = "#1e1e2e"
  local background = "#181825"
  local foreground = "#cdd6f4"

  if tab.is_active then
    background = "#cba6f7"
    foreground = "#11111b"
  end

  local edge_foreground = background

  if tab.tab_index == 0 then
    left_edge_background = edge_foreground
  end

  return {
    {Background={Color=left_edge_background}},
    {Foreground={Color=edge_foreground}},
    {Text=left},
    {Background={Color=background}},
    {Foreground={Color=foreground}},
    {Text=title},
    {Background={Color=right_edge_background}},
    {Foreground={Color=edge_foreground}},
    {Text=right},
  }
end)
