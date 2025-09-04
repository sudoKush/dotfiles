vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'   -- packer manages itself
  use 'rebelot/kanagawa.nvim'
  use 'christoomey/vim-tmux-navigator'
end)

