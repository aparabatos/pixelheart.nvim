-- pixelheart.nvim — palette
-- Source palette (from the character sheet) + extended shades needed
-- to fully theme an editor (comments, warnings, info, borders, selection, etc).

local M = {}

M.base = {
	-- === Original brand palette ===
	neon_cyan = "#00F0FF", -- Primary: highlights, active states, circuit lines
	hot_pink = "#FF0099", -- Secondary: logo/heart, CTAs, "error" accents
	electric_purple = "#9D4EDD", -- Accent: gradients, depth, magic elements
	deep_void = "#1A1A2E", -- Background: main dark background
	soft_slate = "#2D2D44", -- Background: panels, lower thirds, code blocks
	pure_white = "#FFFFFF", -- Text on dark backgrounds
	deep_charcoal = "#121212", -- Text on light backgrounds
	glitch_red = "#FF4D4D", -- Error / bug warnings
	lime_green = "#00FF88", -- Success / build passed

	-- === Extended, added to complete the scheme ===
	amber_warn = "#FFB454", -- Warning: didn't exist in source palette;
	-- warm amber reads as "caution" without
	-- clashing with hot pink (error-adjacent) or
	-- lime (success). Needed for LSP warnings,
	-- diffs, and "in progress" states.
	sky_info = "#4EA8DE", -- Info: a calmer blue-cyan, distinct enough
	-- from neon_cyan so "info" doesn't read as
	-- "primary action". Needed for hints/info
	-- diagnostics and informational messages.
	muted_comment = "#6C6C8A", -- Comment: a desaturated lavender-grey pulled
	-- from the headband gradient family, dim
	-- enough to recede but still on-theme.
	ghost_purple = "#4A4A68", -- Line numbers / inactive UI: sits between
	-- soft_slate and muted_comment.
	void_darker = "#12121F", -- Deeper background: floats, popups, sidebars.
	slate_lighter = "#3A3A56", -- Cursorline / subtle highlight bg.
	selection_bg = "#3D2B56", -- Visual selection: a purple wash.
	border_purple = "#6B3FA0", -- Dimmed purple for float/window borders.
	type_lavender = "#C29CFF", -- Lighter purple for types/classes so they
	-- don't collide with electric_purple accents.
	none = "NONE",
}

return M
