local wezterm = require 'wezterm'

local act = wezterm.action
return {

  -- CTRL+t to open new tab
  { key = 't', mods = 'CTRL', action = act.SpawnTab 'DefaultDomain' },

  -- search for things that look like git hashes
  {
    key = 'H',
    mods = 'SHIFT|CTRL',
    action = act.Search { Regex = '[a-f0-9]{6,}' },
  },

  {
    key = 'F11',
    mods = 'SHIFT',
    action = wezterm.action.ToggleFullScreen,
  },
}
