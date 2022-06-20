local wezterm = require("wezterm")
local catppuccin = require("colors.catppuccin").setup {}

require("tab_bar")
local leader = require("keys.leader")
local keys = require("keys")
local key_tables = require("keys.tables")

return {
  font = wezterm.font("Fira Code", {bold=true}),
  font_size = 12.5,
  colors = catppuccin,
  use_fancy_tab_bar = false,
  window_decorations = "RESIZE",
  leader = leader,
  keys = keys,
  key_tables = key_tables,
}
