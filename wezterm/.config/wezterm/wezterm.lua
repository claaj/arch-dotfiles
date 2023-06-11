local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.default_prog = { "/bin/bash" }

config.color_scheme = 'tomorrow-day'

config.font = wezterm.font 'monospace'

config.font_size = 13.5

config.window_decorations = 'NONE'

config.enable_tab_bar = false

config.window_padding = {
	left = 20,
	right = 20,
	top = 20,
	bottom = 20,
}

return config
