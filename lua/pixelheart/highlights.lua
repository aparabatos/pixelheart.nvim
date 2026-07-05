-- pixelheart.nvim — highlight group definitions

local M = {}

--- Build the full highlight table.
--- @param c table palette (from palette.lua)
--- @param opts table { transparent = boolean }
function M.get(c, opts)
  opts = opts or {}
  local bg = opts.transparent and c.none or c.deep_void

  return {
    -- ============ Editor UI ============
    Normal        = { fg = c.pure_white, bg = bg },
    NormalFloat   = { fg = c.pure_white, bg = opts.transparent and c.none or c.void_darker },
    FloatBorder   = { fg = c.border_purple, bg = opts.transparent and c.none or c.void_darker },
    FloatTitle    = { fg = c.neon_cyan, bg = opts.transparent and c.none or c.void_darker, bold = true },

    Cursor        = { fg = c.deep_void, bg = c.neon_cyan },
    CursorLine    = { bg = c.slate_lighter },
    CursorLineNr  = { fg = c.neon_cyan, bold = true },
    CursorColumn  = { bg = c.slate_lighter },

    LineNr        = { fg = c.ghost_purple },
    SignColumn    = { fg = c.ghost_purple, bg = bg },
    ColorColumn   = { bg = c.soft_slate },
    Folded        = { fg = c.muted_comment, bg = c.soft_slate, italic = true },
    FoldColumn    = { fg = c.ghost_purple, bg = bg },

    VertSplit     = { fg = c.soft_slate },
    WinSeparator  = { fg = c.soft_slate },

    Pmenu         = { fg = c.pure_white, bg = c.void_darker },
    PmenuSel      = { fg = c.deep_void, bg = c.neon_cyan, bold = true },
    PmenuSbar     = { bg = c.soft_slate },
    PmenuThumb    = { bg = c.electric_purple },
    PmenuBorder   = { fg = c.border_purple, bg = c.void_darker },

    StatusLine    = { fg = c.pure_white, bg = c.soft_slate },
    StatusLineNC  = { fg = c.muted_comment, bg = c.soft_slate },
    TabLine       = { fg = c.muted_comment, bg = c.soft_slate },
    TabLineFill   = { bg = c.deep_void },
    TabLineSel    = { fg = c.deep_void, bg = c.neon_cyan, bold = true },

    Visual        = { bg = c.selection_bg },
    VisualNOS     = { bg = c.selection_bg },

    Search        = { fg = c.deep_void, bg = c.amber_warn, bold = true },
    IncSearch     = { fg = c.deep_void, bg = c.hot_pink, bold = true },
    CurSearch     = { fg = c.deep_void, bg = c.hot_pink, bold = true },
    MatchParen    = { fg = c.hot_pink, bold = true, underline = true },

    NonText       = { fg = c.ghost_purple },
    Whitespace    = { fg = c.soft_slate },
    Conceal       = { fg = c.muted_comment },
    SpecialKey    = { fg = c.ghost_purple },

    Directory     = { fg = c.neon_cyan, bold = true },
    Title         = { fg = c.hot_pink, bold = true },
    ModeMsg       = { fg = c.lime_green, bold = true },
    MoreMsg       = { fg = c.lime_green },
    Question      = { fg = c.neon_cyan },
    WarningMsg    = { fg = c.amber_warn, bold = true },
    ErrorMsg      = { fg = c.glitch_red, bold = true },
    WildMenu      = { fg = c.deep_void, bg = c.neon_cyan },

    QuickFixLine  = { bg = c.slate_lighter },
    WinBar        = { fg = c.pure_white, bg = bg },
    WinBarNC      = { fg = c.muted_comment, bg = bg },

    -- ============ Syntax ============
    Comment        = { fg = c.muted_comment, italic = true },

    Constant       = { fg = c.electric_purple },
    String         = { fg = c.lime_green },
    Character      = { fg = c.lime_green },
    Number         = { fg = c.electric_purple },
    Boolean        = { fg = c.electric_purple, bold = true },
    Float          = { fg = c.electric_purple },

    Identifier     = { fg = c.pure_white },
    Function       = { fg = c.neon_cyan, bold = true },

    Statement      = { fg = c.hot_pink },
    Conditional    = { fg = c.hot_pink },
    Repeat         = { fg = c.hot_pink },
    Label          = { fg = c.hot_pink },
    Operator       = { fg = c.pure_white },
    Keyword        = { fg = c.hot_pink, bold = true },
    Exception      = { fg = c.hot_pink, bold = true },

    PreProc        = { fg = c.type_lavender },
    Include        = { fg = c.type_lavender },
    Define         = { fg = c.type_lavender },
    Macro          = { fg = c.type_lavender },
    PreCondit      = { fg = c.type_lavender },

    Type           = { fg = c.type_lavender },
    StorageClass   = { fg = c.type_lavender },
    Structure      = { fg = c.type_lavender },
    Typedef        = { fg = c.type_lavender },

    Special        = { fg = c.sky_info },
    SpecialChar    = { fg = c.sky_info },
    Tag            = { fg = c.hot_pink },
    Delimiter      = { fg = c.muted_comment },
    SpecialComment = { fg = c.muted_comment, bold = true },
    Debug          = { fg = c.amber_warn },

    Underlined     = { underline = true },
    Ignore         = { fg = c.ghost_purple },
    Error          = { fg = c.glitch_red, bold = true },
    Todo           = { fg = c.deep_void, bg = c.amber_warn, bold = true },

    -- ============ Diagnostics (LSP) ============
    DiagnosticError = { fg = c.glitch_red },
    DiagnosticWarn  = { fg = c.amber_warn },
    DiagnosticInfo  = { fg = c.sky_info },
    DiagnosticHint  = { fg = c.neon_cyan },
    DiagnosticOk    = { fg = c.lime_green },

    DiagnosticVirtualTextError = { fg = c.glitch_red, bg = c.void_darker },
    DiagnosticVirtualTextWarn  = { fg = c.amber_warn, bg = c.void_darker },
    DiagnosticVirtualTextInfo  = { fg = c.sky_info, bg = c.void_darker },
    DiagnosticVirtualTextHint  = { fg = c.neon_cyan, bg = c.void_darker },

    DiagnosticUnderlineError = { undercurl = true, sp = c.glitch_red },
    DiagnosticUnderlineWarn  = { undercurl = true, sp = c.amber_warn },
    DiagnosticUnderlineInfo  = { undercurl = true, sp = c.sky_info },
    DiagnosticUnderlineHint  = { undercurl = true, sp = c.neon_cyan },

    DiagnosticFloatingError = { fg = c.glitch_red },
    DiagnosticFloatingWarn  = { fg = c.amber_warn },
    DiagnosticFloatingInfo  = { fg = c.sky_info },
    DiagnosticFloatingHint  = { fg = c.neon_cyan },

    DiagnosticSignError = { fg = c.glitch_red },
    DiagnosticSignWarn  = { fg = c.amber_warn },
    DiagnosticSignInfo  = { fg = c.sky_info },
    DiagnosticSignHint  = { fg = c.neon_cyan },

    LspReferenceText  = { bg = c.slate_lighter },
    LspReferenceRead  = { bg = c.slate_lighter },
    LspReferenceWrite = { bg = c.selection_bg },
    LspSignatureActiveParameter = { fg = c.hot_pink, bold = true },
    LspCodeLens       = { fg = c.muted_comment, italic = true },
    LspInlayHint      = { fg = c.ghost_purple, bg = c.soft_slate, italic = true },

    -- ============ Diff / Git ============
    DiffAdd     = { fg = c.lime_green, bg = c.deep_void },
    DiffChange  = { fg = c.amber_warn, bg = c.deep_void },
    DiffDelete  = { fg = c.glitch_red, bg = c.deep_void },
    DiffText    = { fg = c.neon_cyan, bg = c.soft_slate, bold = true },

    GitSignsAdd    = { fg = c.lime_green },
    GitSignsChange = { fg = c.amber_warn },
    GitSignsDelete = { fg = c.glitch_red },
    GitSignsCurrentLineBlame = { fg = c.muted_comment, italic = true },

    -- ============ Treesitter ============
    ["@variable"]            = { fg = c.pure_white },
    ["@variable.builtin"]    = { fg = c.hot_pink, italic = true },
    ["@variable.parameter"]  = { fg = c.sky_info },
    ["@variable.member"]     = { fg = c.type_lavender },

    ["@constant"]         = { fg = c.electric_purple },
    ["@constant.builtin"] = { fg = c.electric_purple, bold = true },

    ["@string"]        = { fg = c.lime_green },
    ["@string.escape"] = { fg = c.neon_cyan, bold = true },
    ["@number"]        = { fg = c.electric_purple },
    ["@boolean"]       = { fg = c.electric_purple, bold = true },

    ["@function"]         = { fg = c.neon_cyan, bold = true },
    ["@function.builtin"] = { fg = c.neon_cyan, italic = true },
    ["@function.call"]    = { fg = c.neon_cyan },
    ["@method"]           = { fg = c.neon_cyan },
    ["@method.call"]      = { fg = c.neon_cyan },
    ["@constructor"]      = { fg = c.type_lavender, bold = true },

    ["@keyword"]          = { fg = c.hot_pink, bold = true },
    ["@keyword.function"] = { fg = c.hot_pink, bold = true },
    ["@keyword.return"]   = { fg = c.hot_pink, bold = true },
    ["@keyword.operator"] = { fg = c.hot_pink },
    ["@conditional"]      = { fg = c.hot_pink },
    ["@repeat"]           = { fg = c.hot_pink },

    ["@type"]        = { fg = c.type_lavender },
    ["@type.builtin"]= { fg = c.type_lavender, italic = true },
    ["@attribute"]   = { fg = c.sky_info },
    ["@property"]    = { fg = c.type_lavender },
    ["@namespace"]   = { fg = c.type_lavender },

    ["@punctuation.delimiter"] = { fg = c.muted_comment },
    ["@punctuation.bracket"]   = { fg = c.pure_white },
    ["@punctuation.special"]   = { fg = c.hot_pink },

    ["@comment"]          = { fg = c.muted_comment, italic = true },
    ["@comment.todo"]     = { fg = c.deep_void, bg = c.amber_warn, bold = true },
    ["@comment.error"]    = { fg = c.pure_white, bg = c.glitch_red, bold = true },
    ["@comment.warning"]  = { fg = c.deep_void, bg = c.amber_warn, bold = true },
    ["@comment.note"]     = { fg = c.deep_void, bg = c.sky_info, bold = true },

    ["@tag"]          = { fg = c.hot_pink },
    ["@tag.attribute"]= { fg = c.type_lavender, italic = true },
    ["@tag.delimiter"]= { fg = c.muted_comment },

    ["@markup.heading"]     = { fg = c.hot_pink, bold = true },
    ["@markup.strong"]      = { bold = true },
    ["@markup.italic"]      = { italic = true },
    ["@markup.underline"]   = { underline = true },
    ["@markup.link"]        = { fg = c.neon_cyan, underline = true },
    ["@markup.link.url"]    = { fg = c.sky_info, underline = true },
    ["@markup.raw"]         = { fg = c.lime_green },
    ["@markup.list"]        = { fg = c.hot_pink },

    -- ============ Plugins ============
    -- Telescope
    TelescopeNormal        = { fg = c.pure_white, bg = c.void_darker },
    TelescopeBorder         = { fg = c.border_purple, bg = c.void_darker },
    TelescopePromptNormal   = { fg = c.pure_white, bg = c.soft_slate },
    TelescopePromptBorder   = { fg = c.electric_purple, bg = c.soft_slate },
    TelescopePromptPrefix   = { fg = c.hot_pink },
    TelescopeSelection      = { fg = c.pure_white, bg = c.selection_bg, bold = true },
    TelescopeMatching       = { fg = c.neon_cyan, bold = true },
    TelescopeTitle          = { fg = c.deep_void, bg = c.neon_cyan, bold = true },

    -- NvimTree / Neo-tree
    NvimTreeNormal        = { fg = c.pure_white, bg = c.void_darker },
    NvimTreeFolderIcon    = { fg = c.electric_purple },
    NvimTreeFolderName    = { fg = c.type_lavender },
    NvimTreeOpenedFolderName = { fg = c.neon_cyan, bold = true },
    NvimTreeRootFolder    = { fg = c.hot_pink, bold = true },
    NvimTreeIndentMarker  = { fg = c.ghost_purple },
    NvimTreeGitDirty      = { fg = c.amber_warn },
    NvimTreeGitNew        = { fg = c.lime_green },
    NvimTreeGitDeleted    = { fg = c.glitch_red },
    NvimTreeSpecialFile   = { fg = c.neon_cyan, underline = true },
    NvimTreeExecFile      = { fg = c.lime_green, bold = true },

    NeoTreeNormal         = { fg = c.pure_white, bg = c.void_darker },
    NeoTreeDirectoryIcon  = { fg = c.electric_purple },
    NeoTreeDirectoryName  = { fg = c.type_lavender },
    NeoTreeRootName       = { fg = c.hot_pink, bold = true },
    NeoTreeGitAdded       = { fg = c.lime_green },
    NeoTreeGitModified    = { fg = c.amber_warn },
    NeoTreeGitDeleted     = { fg = c.glitch_red },

    -- nvim-cmp
    CmpItemAbbr           = { fg = c.pure_white },
    CmpItemAbbrMatch      = { fg = c.neon_cyan, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.neon_cyan, bold = true },
    CmpItemAbbrDeprecated = { fg = c.muted_comment, strikethrough = true },
    CmpItemKind           = { fg = c.electric_purple },
    CmpItemKindFunction   = { fg = c.neon_cyan },
    CmpItemKindMethod     = { fg = c.neon_cyan },
    CmpItemKindVariable   = { fg = c.pure_white },
    CmpItemKindKeyword    = { fg = c.hot_pink },
    CmpItemKindText       = { fg = c.lime_green },
    CmpItemKindClass      = { fg = c.type_lavender },
    CmpItemKindInterface  = { fg = c.type_lavender },
    CmpItemKindModule     = { fg = c.type_lavender },
    CmpItemKindSnippet    = { fg = c.amber_warn },
    CmpItemMenu           = { fg = c.muted_comment, italic = true },
    CmpBorder             = { fg = c.border_purple },

    -- WhichKey
    WhichKey          = { fg = c.hot_pink, bold = true },
    WhichKeyGroup     = { fg = c.neon_cyan },
    WhichKeyDesc      = { fg = c.pure_white },
    WhichKeySeparator = { fg = c.muted_comment },
    WhichKeyFloat     = { bg = c.void_darker },
    WhichKeyBorder    = { fg = c.border_purple },

    -- Indent guides
    IndentBlanklineChar         = { fg = c.soft_slate },
    IndentBlanklineContextChar  = { fg = c.electric_purple },
    IblIndent                   = { fg = c.soft_slate },
    IblScope                    = { fg = c.electric_purple },

    -- Notify
    NotifyERRORBorder = { fg = c.glitch_red },
    NotifyWARNBorder  = { fg = c.amber_warn },
    NotifyINFOBorder  = { fg = c.sky_info },
    NotifyDEBUGBorder = { fg = c.muted_comment },
    NotifyTRACEBorder = { fg = c.electric_purple },
    NotifyERRORIcon   = { fg = c.glitch_red },
    NotifyWARNIcon    = { fg = c.amber_warn },
    NotifyINFOIcon    = { fg = c.sky_info },
    NotifyERRORTitle  = { fg = c.glitch_red },
    NotifyWARNTitle   = { fg = c.amber_warn },
    NotifyINFOTitle   = { fg = c.sky_info },

    -- Bufferline
    BufferLineIndicatorSelected = { fg = c.neon_cyan },
    BufferLineFill              = { bg = c.deep_void },
  }
end

return M
