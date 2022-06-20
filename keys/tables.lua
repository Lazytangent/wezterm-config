local wezterm = require("wezterm")
local action = wezterm.action

return {
  localleader = {
    {key="Escape", action="PopKeyTable"},
  },
}
