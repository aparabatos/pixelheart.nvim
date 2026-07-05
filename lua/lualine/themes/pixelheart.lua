-- lualine theme for pixelheart.nvim
-- Usage: require('lualine').setup { options = { theme = 'pixelheart' } }

local c = require("pixelheart.palette").base

local theme = {
  normal = {
    a = { fg = c.deep_void, bg = c.neon_cyan, gui = "bold" },
    b = { fg = c.pure_white, bg = c.soft_slate },
    c = { fg = c.muted_comment, bg = c.deep_void },
  },
  insert = {
    a = { fg = c.deep_void, bg = c.lime_green, gui = "bold" },
    b = { fg = c.pure_white, bg = c.soft_slate },
    c = { fg = c.muted_comment, bg = c.deep_void },
  },
  visual = {
    a = { fg = c.deep_void, bg = c.electric_purple, gui = "bold" },
    b = { fg = c.pure_white, bg = c.soft_slate },
    c = { fg = c.muted_comment, bg = c.deep_void },
  },
  replace = {
    a = { fg = c.deep_void, bg = c.glitch_red, gui = "bold" },
    b = { fg = c.pure_white, bg = c.soft_slate },
    c = { fg = c.muted_comment, bg = c.deep_void },
  },
  command = {
    a = { fg = c.deep_void, bg = c.hot_pink, gui = "bold" },
    b = { fg = c.pure_white, bg = c.soft_slate },
    c = { fg = c.muted_comment, bg = c.deep_void },
  },
  inactive = {
    a = { fg = c.muted_comment, bg = c.soft_slate, gui = "bold" },
    b = { fg = c.muted_comment, bg = c.soft_slate },
    c = { fg = c.muted_comment, bg = c.deep_void },
  },
}

return theme
