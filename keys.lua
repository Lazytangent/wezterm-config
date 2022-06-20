local wezterm = require("wezterm")
local add_leader_keybind = require("utils").add_leader_keybind

local action = wezterm.action

local LEADER = "LEADER"

wezterm.on("update-right-status", function(window, pane)
  local name = window:active_key_table()
  if name then
    name = "TABLE: " .. name .. " "
  end
  window:set_right_status(name or "")
end)

local keys = {}

local keysbinds = {
  {key="s", action=action{SplitHorizontal={domain="CurrentPaneDomain"}}},
  {key="v", action=action{SplitVertical={domain="CurrentPaneDomain"}}},
  {key="x", action=action{CloseCurrentPane={confirm=true}}},
  {key="[", action="ActivateCopyMode"},
  {key="n", action=action{ActivateTabRelative=1}},
  {key="p", action=action{ActivateTabRelative=-1}},
  {key="c", action=action{SpawnTab="CurrentPaneDomain"}},
  {key="t", action=action{SpawnTab="DefaultDomain"}},
  {key="w", action=action{ShowLauncherArgs={flags="DOMAINS"}}},

  {key="m", mods=LEADER, action=action{
    ActivateKeyTable={
      name="localleader",
      one_shot=false,
      replace_current=false,
      timeout_milliseconds=1000,
    },
  }},

  {key="a", mods="LEADER|CTRL", action=action{SendString="\x01"}},
}

for _, keybind in ipairs(keysbinds) do
  add_leader_keybind(keys, keybind)
end

for i = 1, 8 do
  add_leader_keybind(keys, {
    key=tostring(i),
    action=action{ActivateTab=i-1},
  })
end

return keys
