" pixelheart.nvim
" Entry point loaded by `:colorscheme pixelheart`.
" Delegates all real work to the Lua module so highlight logic lives
" in one place and stays easy to maintain.

lua require("pixelheart").load()
