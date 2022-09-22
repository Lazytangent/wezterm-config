local wezterm = require("wezterm")
local catppuccin = require("colors.catppuccin").setup({flavour = "mocha"})

require("events")
local leader = require("keys.leader")
local keys = require("keys")
local key_tables = require("keys.tables")
local utils = require("utils")

return {
  adjust_window_size_when_changing_font_size = false,
  colors = catppuccin,
  font = wezterm.font("FiraCode Nerd Font"),
  font_size = 13.5,
  key_tables = key_tables,
  keys = keys,
  leader = leader,
  tab_max_width = utils.MAX_TAB_LENGTH,
  use_fancy_tab_bar = false,
  window_decorations = "RESIZE"
}
