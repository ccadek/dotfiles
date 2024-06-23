local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- config visual settings
for k, v in pairs(require 'flags') do
  config[k] = v
end

config.keys = require 'keybindings'
config.hyperlink_rules = require 'hyperlinks'

return config
