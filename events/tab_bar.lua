local wezterm = require("wezterm")
local u = require("utils")

local remove_file = u.remove_file
local replace_home = u.replace_home
local pad_with_space = u.pad_with_space
local include_copy_prefix = u.include_copy_prefix

local right = utf8.char(0xe0bc)
local left = utf8.char(0xe0ba)

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local pane = tab.active_pane
  local original_title = pane.title

  local title_text = include_copy_prefix(replace_home(remove_file(pane.current_working_dir)), original_title)
  local title = pad_with_space(pane.pane_id .. ": " .. title_text)

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
