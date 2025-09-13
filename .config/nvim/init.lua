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

local transparent_bg = function()
	vim.cmd [[
		hi Normal guibg=NONE
		hi NormalNC guibg=NONE
		hi SignColumn guibg=NONE
		hi VertSplit guibg=NONE
		hi StatusLine guibg=NONE
		hi LineNr guibg=NONE
		hi CursorLineNr guibg=NONE
		hi Pmenu guibg=NONE
		hi PmenuSel guibg=NONE
		hi NormalFloat guibg=NONE
		hi FloatBorder guibg=NONE
		]]
end

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = transparent_bg
})

transparent_bg()

require('plugins')
require('keymaps')


