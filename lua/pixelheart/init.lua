-- pixelheart.nvim
-- A neon-circuit / pixel-heart themed colorscheme for Neovim.

local M = {}

M.config = {
	transparent = false, -- set true to disable setting a background colour
	italic_comments = true,
	terminal_colors = true,
}

function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

local function set_terminal_colors(c)
	vim.g.terminal_color_0 = c.deep_void
	vim.g.terminal_color_1 = c.glitch_red
	vim.g.terminal_color_2 = c.lime_green
	vim.g.terminal_color_3 = c.amber_warn
	vim.g.terminal_color_4 = c.sky_info
	vim.g.terminal_color_5 = c.hot_pink
	vim.g.terminal_color_6 = c.neon_cyan
	vim.g.terminal_color_7 = c.pure_white
	vim.g.terminal_color_8 = c.ghost_purple
	vim.g.terminal_color_9 = c.glitch_red
	vim.g.terminal_color_10 = c.lime_green
	vim.g.terminal_color_11 = c.amber_warn
	vim.g.terminal_color_12 = c.sky_info
	vim.g.terminal_color_13 = c.electric_purple
	vim.g.terminal_color_14 = c.neon_cyan
	vim.g.terminal_color_15 = c.pure_white
end

function M.load()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "pixelheart"

	local palette = require("pixelheart.palette")
	local c = palette.base
	local highlights = require("pixelheart.highlights").get(c, M.config)

	if not M.config.italic_comments then
		highlights.Comment.italic = false
		highlights["@comment"].italic = false
	end

	for group, hl in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, hl)
	end

	if M.config.terminal_colors then
		set_terminal_colors(c)
	end
end

return M
