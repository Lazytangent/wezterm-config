local wezterm = require("wezterm")
local catppuccin = require("colors.catppuccin").setup {}

return {
  font = wezterm.font("Fira Code"),
  font_size = 12.5,
  colors = catppuccin,
}
