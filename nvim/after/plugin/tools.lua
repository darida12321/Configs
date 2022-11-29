local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

require('nvim-tree').setup()
require('telescope').load_extension('fzf')
require('telescope').setup({
    defaults = {
        layout_strategy = 'flex',
        layout_config = {
            flip_columns = 120
        }
    }
})
require('trouble').setup()
require('todo-comments').setup {
    highlight = {
        pattern = [[.*<(KEYWORDS)\s*:?]],
    },
    search = {
        pattern = [[\b(KEYWORDS):?]],
    }
}

-- NvimTree file view tree
map('n', '<leader>pv', '<cmd>NvimTreeFocus<cr>', opts)

-- Floaterm floating terminal
vim.g.floaterm_shell = 'zsh'
map('n', "<leader>ft", ":FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 fish <CR> ", opts)
map('n', "t", ":FloatermToggle myfloat<CR>", opts)
map('t', "<Esc>", "<C-\\><C-n>:q<CR>", opts)

-- Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
map('n', '<leader>fw', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)
map('n', '<leader>fc', '<cmd>Telescope colorscheme<cr>', opts)
map('n', '<leader>f.', '<cmd>Telescope find_files search_dirs=~/.config/nvim<cr>', opts)
map('n', '<leader>fr', '<cmd>Telescope oldfiles<cr>', opts)

-- TodoComments list todo comments
map('n', '<leader>xt', '<cmd>TodoTrouble<cr>', opts)

-- Trouble open diagnostics
map('n', '<leader>xx', '<cmd>TroubleToggle<cr>', opts)
map('n', '<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<cr>', opts)
map('n', '<leader>xd', '<cmd>TroubleToggle document_diagnostics<cr>', opts)
