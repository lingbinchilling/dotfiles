local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.window_background_opacity = 0.4

--local color_schemes = require("config.color_schemes")
config.initial_cols = 120
config.initial_rows = 28

config.font_size = 12

return config
