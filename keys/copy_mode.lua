local wezterm = require("wezterm")
local action = wezterm.action

return {
  {key="y", mods="NONE", action=action.Multiple{
    action.CopyTo("Clipboard"),
    action.CopyMode("Close"),
  }},
  {key="/", mods="NONE", action=action.Search{CaseSensitiveString=""}},
  {key="n", mods="NONE", action=action.CopyMode("NextMatch")},
  {key="N", mods="SHIFT", action=action.CopyMode("PriorMatch")},

  -- Original Default Copy Mode Bindings
  {key="c", mods="CTRL", action=action.CopyMode("Close")},
  {key="g", mods="CTRL", action=action.CopyMode("Close")},
  {key="q", mods="NONE", action=action.CopyMode("Close")},
  {key="Escape", mods="NONE", action=action.CopyMode("Close")},

  {key="h", mods="NONE", action=action.CopyMode("MoveLeft")},
  {key="j", mods="NONE", action=action.CopyMode("MoveDown")},
  {key="k", mods="NONE", action=action.CopyMode("MoveUp")},
  {key="l", mods="NONE", action=action.CopyMode("MoveRight")},

  {key="LeftArrow", mods="NONE", action=action.CopyMode("MoveLeft")},
  {key="DownArrow", mods="NONE", action=action.CopyMode("MoveDown")},
  {key="UpArrow", mods="NONE", action=action.CopyMode("MoveUp")},
  {key="RightArrow", mods="NONE", action=action.CopyMode("MoveRight")},

  {key="RightArrow", mods="ALT", action=action.CopyMode("MoveForwardWord")},
  {key="f", mods="ALT", action=action.CopyMode("MoveForwardWord")},
  {key="Tab", mods="NONE", action=action.CopyMode("MoveForwardWord")},
  {key="w", mods="NONE", action=action.CopyMode("MoveForwardWord")},

  {key="LeftArrow", mods="ALT", action=action.CopyMode("MoveBackwardWord")},
  {key="b", mods="ALT", action=action.CopyMode("MoveBackwardWord")},
  {key="Tab", mods="SHIFT", action=action.CopyMode("MoveBackwardWord")},
  {key="b", mods="NONE", action=action.CopyMode("MoveBackwardWord")},

  {key="0", mods="NONE", action=action.CopyMode("MoveToStartOfLine")},
  {key="Enter", mods="NONE", action=action.CopyMode("MoveToStartOfNextLine")},
  {key="$", mods="NONE", action=action.CopyMode("MoveToEndOfLineContent")},
  {key="$", mods="SHIFT", action=action.CopyMode("MoveToEndOfLineContent")},

  {key="m", mods="ALT", action=action.CopyMode("MoveToStartOfLineContent")},
  {key="^", mods="NONE", action=action.CopyMode("MoveToStartOfLineContent")},
  {key="^", mods="SHIFT", action=action.CopyMode("MoveToStartOfLineContent")},

  {key=" ", mods="NONE", action=action.CopyMode{SetSelectionMode="Cell"}},
  {key="v", mods="NONE", action=action.CopyMode{SetSelectionMode="Cell"}},
  {key="V", mods="NONE", action=action.CopyMode{SetSelectionMode="Line"}},
  {key="V", mods="SHIFT", action=action.CopyMode{SetSelectionMode="Line"}},
  {key="v", mods="CTRL", action=action.CopyMode{SetSelectionMode="Block"}},

  {key="G", mods="NONE", action=action.CopyMode("MoveToScrollbackBottom")},
  {key="G", mods="SHIFT", action=action.CopyMode("MoveToScrollbackBottom")},
  {key="g", mods="NONE", action=action.CopyMode("MoveToScrollbackTop")},

  {key="H", mods="NONE", action=action.CopyMode("MoveToViewportTop")},
  {key="H", mods="SHIFT", action=action.CopyMode("MoveToViewportTop")},
  {key="M", mods="NONE", action=action.CopyMode("MoveToViewportMiddle")},
  {key="M", mods="SHIFT", action=action.CopyMode("MoveToViewportMiddle")},
  {key="L", mods="NONE", action=action.CopyMode("MoveToViewportBottom")},
  {key="L", mods="SHIFT", action=action.CopyMode("MoveToViewportBottom")},

  {key="o", mods="NONE", action=action.CopyMode("MoveToSelectionOtherEnd")},
  {key="O", mods="NONE", action=action.CopyMode("MoveToSelectionOtherEndHoriz")},
  {key="O", mods="SHIFT", action=action.CopyMode("MoveToSelectionOtherEndHoriz")},

  {key="PageUp", mods="NONE", action=action.CopyMode("PageUp")},
  {key="PageDown", mods="NONE", action=action.CopyMode("PageDown")},

  {key="b", mods="CTRL", action=action.CopyMode("PageUp")},
  {key="f", mods="CTRL", action=action.CopyMode("PageDown")},
}
