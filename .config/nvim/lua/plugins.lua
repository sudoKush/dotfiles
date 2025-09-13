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

	use {
		'nvim-lualine/lualine.nvim', -- statusline
		requires = { 'nvim-tree/nvim-web-devicons', opt = true },
		require('lualine').setup {
			options = {
				icons_enabled = true,
				theme = 'horizon',
				component_separators = { left = '', right = ''},
				section_separators = { left = '', right = ''},
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				always_show_tabline = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
					refresh_time = 16, -- ~60fps
					events = {
						'WinEnter',
						'BufEnter',
						'BufWritePost',
						'SessionLoadPost',
						'FileChangedShellPost',
						'VimResized',
						'Filetype',
						'CursorMoved',
						'CursorMovedI',
						'ModeChanged',
					},
				}
			},
			sections = {
				lualine_a = {'mode'},
				lualine_b = {'branch', 'diff', 'diagnostics'},
				lualine_c = {'filename'},
				lualine_x = {'encoding', 'fileformat', 'filetype'},
				lualine_y = {'progress'},
				lualine_z = {'location'}
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {'filename'},
				lualine_x = {'location'},
				lualine_y = {},
				lualine_z = {}
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {}
		}
	}

	use 'nvim-lua/plenary.nvim' -- dependency for telescope
	use 'nvim-telescope/telescope.nvim' -- fuzzy finder
	
	use 'norcalli/nvim-colorizer.lua' -- colorizer
	require'colorizer'.setup()

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

	use 'eandrju/cellular-automaton.nvim'  -- a useless plugin but cool plugin

	use 'neovim/nvim-lspconfig'
	use 'jose-elias-alvarez/null-ls.nvim'
	use 'MunifTanjim/prettier.nvim'

end)

