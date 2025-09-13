vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true

vim.opt.clipboard:append("unnamedplus") -- using system clipboard as default register
vim.opt.guicursor = "n-v-c-i:block" -- i like block cursor for all them modes
vim.opt.swapfile = false; -- disables annoying swapfiles 

require('plugins')
require('keymaps')
