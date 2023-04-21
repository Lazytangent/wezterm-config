local wezterm = require("wezterm")

local leader = require("keys.leader")
local keys = require("keys")
local key_tables = require("keys.tables")
local utils = require("utils")

return {
  adjust_window_size_when_changing_font_size = false,
  color_scheme = "Catppuccin Mocha",
  font = wezterm.font("FiraCode Nerd Font", { weight = "Light" }),
  font_size = 11,
  key_tables = key_tables,
  keys = keys,
  leader = leader,
  tab_max_width = utils.MAX_TAB_LENGTH,
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  window_decorations = "RESIZE"
}
