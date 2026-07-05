# pixelheart.nvim

A neon-circuit, pixel-heart themed dark colorscheme for Neovim, built from
the character sheet palette: neon cyan, hot pink, electric purple, glitch
red, and lime green on a deep-void background.

## Palette

| Role          | Name              | Hex       |
|---------------|-------------------|-----------|
| Primary       | Neon Cyan         | `#00F0FF` |
| Secondary     | Hot Pink          | `#FF0099` |
| Accent        | Electric Purple   | `#9D4EDD` |
| Background    | Deep Void         | `#1A1A2E` |
| Background    | Soft Slate        | `#2D2D44` |
| Text (light)  | Pure White        | `#FFFFFF` |
| Text (dark)   | Deep Charcoal     | `#121212` |
| Error         | Glitch Red        | `#FF4D4D` |
| Success       | Lime Green        | `#00FF88` |
| Warning *new* | Amber             | `#FFB454` |
| Info *new*    | Sky Info          | `#4EA8DE` |
| Comment *new* | Muted Comment     | `#6C6C8A` |

The "new" rows were added because the source brand palette didn't define
a warning color, an info color, or a comment color — all essentials for a
usable editor theme. They were chosen to sit naturally alongside the
existing hues (amber reads as caution without fighting hot pink/lime;
the muted lavender-grey comment color is pulled from the headband's
gradient family).

## Installation

### lazy.nvim
```lua
{
  dir = "https://github.com/aparabatos/pixelheart.nvim",
  name = "pixelheart",
  priority = 1000,
  config = function()
    require("pixelheart").setup({
      transparent = false,      -- true = no background color set
      italic_comments = true,
      terminal_colors = true,
    })
    vim.cmd.colorscheme("pixelheart")
  end,
}
```

### packer.nvim
```lua
use({
  "yourname/pixelheart.nvim",
  config = function()
    require("pixelheart").setup()
    vim.cmd.colorscheme("pixelheart")
  end,
})
```

### Manual
Drop this folder into `~/.config/nvim/pack/plugins/start/pixelheart.nvim/`
then in `init.lua`:
```lua
require("pixelheart").setup()
vim.cmd.colorscheme("pixelheart")
```

## Lualine

```lua
require("lualine").setup({
  options = { theme = "pixelheart" },
})
```

## What's covered

- Core editor UI (cursorline, floats, popups, statusline, tabline, folds, search)
- Full syntax groups
- Treesitter `@` capture groups
- LSP diagnostics (error/warn/info/hint, underline + virtual text + floats)
- Diff / GitSigns
- Telescope, NvimTree, Neo-tree, nvim-cmp, WhichKey, indent-blankline, nvim-notify, Bufferline
- 16-color terminal palette
- Lualine theme

## Options

| Option             | Default | Description                                  |
|--------------------|---------|-----------------------------------------------|
| `transparent`      | `false` | Skip setting a background so terminal bg shows |
| `italic_comments`  | `true`  | Toggle italics on comments                    |
| `terminal_colors`  | `true`  | Set `g:terminal_color_*` for `:terminal`      |

## File structure

```
pixelheart.nvim/
├── colors/pixelheart.vim         entry point for :colorscheme
├── lua/pixelheart/
│   ├── init.lua                    setup(), load(), terminal colors
│   ├── palette.lua                 all hex values
│   └── highlights.lua              highlight group table
└── lua/lualine/themes/pixelheart.lua
```
