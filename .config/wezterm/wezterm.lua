local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- config visual settings
for k, v in pairs(require 'flags') do
  config[k] = v
end

config.hyperlink_rules = require 'hyperlinks'
config.color_scheme = 'Catppuccin Mocha'

local keybindings = require 'keybindings'
config.keys = keybindings.key
config.key_tables = keybindings.key_tables

local mux = wezterm.mux

wezterm.on('gui-startup', function()
  local tab, pane, window = mux.spawn_window {}
  window:gui_window():maximize()
end)

return config
