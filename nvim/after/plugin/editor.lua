
-- Automatically pari parentheses
require('nvim-autopairs').setup({
    enable_check_bracket_line = false
})

-- Set up commenting shortcuts
require('Comment').setup()

-- Impatient increase loading speed
require('impatient')

-- Set up incremental search
vim.cmd([[
    map / <Plug>(incsearch-forward)
    map ? <Plug>(incsearch-backward)

    let g:incsearch#auto_nohlsearch = 1
    map n  <Plug>(incsearch-nohl-n)
    map N  <Plug>(incsearch-nohl-N)
    map *  <Plug>(incsearch-nohl-*)
    map #  <Plug>(incsearch-nohl-#)
]])



