local wezterm = require("wezterm")
local theme = wezterm.plugin.require("https://github.com/neapsix/wezterm").main

---@type Config
---@diagnostic disable: missing-fields

local config = {
	macos_window_background_blur = 15,
	window_background_opacity = 0.9,
	font_size = 15,
	line_height = 1.1,
	font = wezterm.font_with_fallback({
		"DankMono Nerd Font Mono",
		{ family = "Symbols Nerd Font Mono" },
	}),
	colors = theme.colors(),
	window_frame = theme.window_frame(),

	window_padding = {
		left = 15,
		right = 15,
		top = 15,
		bottom = 10,
	},

	-- global settings
	adjust_window_size_when_changing_font_size = false,
	debug_key_events = false,
	enable_tab_bar = false,
	native_macos_fullscreen_mode = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
}

return config
