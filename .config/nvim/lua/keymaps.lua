local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

local keymap = vim.keymap
keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "Find files in cwd" })
keymap.set("n", "<leader>r", "<cmd>Telescope oldfiles<cr>", { desc = "Recently opened files" })
keymap.set("n", "<leader>g", "<cmd>Telescope live_grep<cr>", { desc = "Grep in cwd" })
keymap.set("n", "<leader>k", "<cmd>Telescope keymaps<cr>", { desc = "Search keymaps" })

keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>") 

local M = {}
function M.setup()
  vim.api.nvim_set_keymap('n', '<C-h>', ':TmuxNavigateLeft<CR>', opts)
  vim.api.nvim_set_keymap('n', '<C-j>', ':TmuxNavigateDown<CR>', opts)
  vim.api.nvim_set_keymap('n', '<C-k>', ':TmuxNavigateUp<CR>', opts)
  vim.api.nvim_set_keymap('n', '<C-l>', ':TmuxNavigateRight<CR>', opts)
  vim.api.nvim_set_keymap('n', '<C-\\>', ':TmuxNavigatePrevious<CR>', opts)
end
return M

