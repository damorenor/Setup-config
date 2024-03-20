-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.default_prog = { "powershell.exe" }

-- Look configs
config.color_scheme = "Dracula"
config.font = wezterm.font("Agave Nerd Font")
config.window_background_opacity = 0.9

-- and finally, return the configuration to wezterm
return config
