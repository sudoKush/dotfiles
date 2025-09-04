vim.cmd [[packadd packer.nvim]]

-- for auto regeneration for packer_compile.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'   -- packer manages itself

  use 'rebelot/kanagawa.nvim' -- theme

  use {
    'christoomey/vim-tmux-navigator', -- for navigation between tmux panes
    config = function()
      require('keymaps').setup()
    end

  } end)
