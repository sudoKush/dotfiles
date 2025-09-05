vim.cmd [[packadd packer.nvim]]

-- auto regenerate packer_compile.lua on save
vim.cmd [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'   -- packer manages itself
	use 'rebelot/kanagawa.nvim'    -- theme
	use 'nvim-lua/plenary.nvim' -- dependency for telescope
	use 'nvim-telescope/telescope.nvim' -- fuzzy finder
	use {
		'christoomey/vim-tmux-navigator', -- tmux navigation
		config = function()
			require('keymaps').setup()
		end
	}
end)

