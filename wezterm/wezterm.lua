local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- run zellij on startup
config.default_prog = { "/bin/zsh", "-c", 'eval "$(zellij setup --generate-auto-start zsh)"' }
config.set_environment_variables = {
	ZELLIJ_AUTO_EXIT = "true",
}

-- font
config.font = wezterm.font_with_fallback({
	{
		family = "Monaspace Krypton",
		weight = "Regular",
	},
})

config.keys = {
	-- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
	{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
	-- Make Option-Right equivalent to Alt-f; forward-word
	{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
	-- Make Command-Left move to the beginning of the line
	{ key = "LeftArrow", mods = "CMD", action = wezterm.action({ SendString = "\x01" }) }, -- \x01 is Ctrl-A (beginning of the line)
	-- Make Command-Right move to the end of the line
	{ key = "RightArrow", mods = "CMD", action = wezterm.action({ SendString = "\x05" }) }, -- \x05 is Ctrl-E (end of the line)
}

config.color_scheme = "Github Dark (Gogh)"

config.hide_tab_bar_if_only_one_tab = true
config.native_macos_fullscreen_mode = true

return config
