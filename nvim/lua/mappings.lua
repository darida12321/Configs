local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', '<leader>q', ':q<CR>', opts)
map('n', '<leader>w', ':w<CR>', opts)

map('n', '<C-h>', '<C-w><C-h>', opts)
map('n', '<C-j>', '<C-w><C-j>', opts)
map('n', '<C-k>', '<C-w><C-k>', opts)
map('n', '<C-l>', '<C-w><C-l>', opts)

map('n', '<leader>ps', ':lua require(\'telescope.builtin\').grep_string({ search = vim.fn.input("Grep for >")})<CR>', opts)

