local wezterm = require("wezterm")
local u = require("utils")

local add_keybind = u.add_keybind
local add_leader_keybind = u.add_leader_keybind

local action = wezterm.action

local LEADER = "LEADER"

local keys = {}

local keybinds = {
  {key=",", action=action.ShowDebugOverlay},
  {key="[", action=action.ActivateCopyMode},

  {key="c", action=action.SpawnTab("CurrentPaneDomain")},
  {key="d", action=action.DetachDomain("CurrentPaneDomain")},
  {key="h", action=action.ActivatePaneDirection("Left")},
  {key="j", action=action.ActivatePaneDirection("Down")},
  {key="k", action=action.ActivatePaneDirection("Up")},
  {key="l", action=action.ActivatePaneDirection("Right")},
  {key="n", action=action.ActivateTabRelative(1)},
  {key="p", action=action.ActivateTabRelative(-1)},
  {key="s", action=action.SplitVertical{domain="CurrentPaneDomain"}},
  {key="t", action=action.SpawnCommandInNewTab{cwd="~/"}},
  {key="v", action=action.SplitHorizontal{domain="CurrentPaneDomain"}},
  {key="w", action=action.ShowLauncherArgs{flags="DOMAINS"}},
  {key="x", action=action.CloseCurrentPane{confirm=true}},

  {key="m", mods=LEADER, action=action.ActivateKeyTable{
      name="localleader",
      one_shot=false,
      replace_current=false,
      timeout_milliseconds=1000,
    },
  },
  {key="l", mods="LEADER|CTRL", action=action.ActivateKeyTable{
      name="launchers",
      one_shot=true,
      replace_current=false,
      timeout_milliseconds=1000,
    },
  },
  {key="f", mods="LEADER|CTRL", action=action.ActivateKeyTable{
      name="ctrl_f",
      one_shot=true,
      replace_current=false,
      timeout_milliseconds=1000,
    },
  },

  {key="a", mods="LEADER|CTRL", action=action.SendString("\x01")},
}

for _, keybind in ipairs(keybinds) do
  add_leader_keybind(keys, keybind)
end

for i = 1, 8 do
  add_leader_keybind(keys, {
    key=tostring(i),
    action=action.ActivateTab(i-1),
  })
end

add_keybind(keys, {key="s", mods="CTRL", action=action.ActivateKeyTable{
    name="ctrl_s",
    one_shot=true,
    replace_current=false,
    timeout_milliseconds=1000,
  },
})

return keys
