local wezterm = require("wezterm")
local catppuccin = require("colors.catppuccin").setup { flavour = "mocha" }

require("tab_bar")
local leader = require("keys.leader")
local keys = require("keys")
local key_tables = require("keys.tables")

return {
  colors             = catppuccin,
  font               = wezterm.font("Fira Code"),
  font_size          = 12.5,
  key_tables         = key_tables,
  keys               = keys,
  leader             = leader,
  tab_max_width      = 50,
  use_fancy_tab_bar  = false,
  window_decorations = "RESIZE",
}
