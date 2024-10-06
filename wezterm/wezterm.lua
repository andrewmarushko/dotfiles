local wezterm = require("wezterm")
local theme = wezterm.plugin.require("https://github.com/neapsix/wezterm").main

---@type Config
---@diagnostic disable: missing-fields

local config = {
	font_size = 18,
	line_height = 1.2,
	font = wezterm.font_with_fallback({
		"DankMono Nerd Font Mono",
		{ family = "Symbols Nerd Font Mono" },
	}),
	colors = theme.colors(),
	window_frame = theme.window_frame(),

	window_padding = {
		left = 10,
		right = 10,
		top = 30,
		bottom = 10,
	},
	window_background_image = "/Users/andrewmarushko/.config/wezterm/cyber_girl.jpeg",
	window_background_image_hsb = {
		brightness = 0.02,
		hue = 1.0,
		saturation = 1.0,
	},

	-- global settings
	adjust_window_size_when_changing_font_size = true,
	debug_key_events = false,
	enable_tab_bar = false,
	native_macos_fullscreen_mode = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
}

return config
