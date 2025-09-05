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
	use {
      'sainnhe/gruvbox-material', -- theme
      lazy = false,
      priority = 1000,
      config = function()
        vim.g.gruvbox_material_enable_italic = true
        vim.cmd.colorscheme('gruvbox-material')
      end
    }

	use 'nvim-lua/plenary.nvim' -- dependency for telescope
	use 'nvim-telescope/telescope.nvim' -- fuzzy finder
	use {
		'christoomey/vim-tmux-navigator', -- tmux navigation
		config = function()
			require('keymaps').setup()
		end
	}
	use {
		"nvim-treesitter/nvim-treesitter", -- syntax highlighting for different languages
		run = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup {
				ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "python", "javascript", "toml", "tsx", "java", "html", "css" },
				sync_install = false,
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			}
		end,
	}

end)

