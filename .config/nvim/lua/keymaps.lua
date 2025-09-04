vim.g.mapleader = " " -- space is the leader key


-- tmux navigation between panes keymaps
local M = {}

function M.setup()
  local opts = { noremap = true, silent = true }
  vim.api.nvim_set_keymap('n', '<C-h>', ':TmuxNavigateLeft<CR>', opts)
  vim.api.nvim_set_keymap('n', '<C-j>', ':TmuxNavigateDown<CR>', opts)
  vim.api.nvim_set_keymap('n', '<C-k>', ':TmuxNavigateUp<CR>', opts)
  vim.api.nvim_set_keymap('n', '<C-l>', ':TmuxNavigateRight<CR>', opts)
  vim.api.nvim_set_keymap('n', '<C-\\>', ':TmuxNavigatePrevious<CR>', opts)
end

return M

