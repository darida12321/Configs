
-- Set up color scheme
vim.o.background = 'dark'
vim.cmd('colorscheme tokyonight')

require('lualine').setup({
    options = {
        disabled_filetypes = {
          statusline = {'Trouble', 'NvimTree'},
          winbar = {'NvimTree', 'Trouble'},
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    }
})

-- Set up hexadecimal color colorizing
require'colorizer'.setup({
    '*';
    css = { names = true };
    html = { names = true };
}, { names = false })

-- Set up indentation highlighting
require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
vim.cmd[[
    highlight IndentBlanklineChar guifg=#3b4261
    highlight IndentBlanklineContextChar guifg=#9d7cd8
    highlight IndentBlanklineContextStart gui=underline guisp=#bb9af7
    highlight IndentBlanklineSpaceChar gui=nocombine guifg=#3b4261
    highlight IndentBlanklineSpaceCharBlankLine gui=nocombine guifg=#3b4261
]]

-- Highlight cursor after jump
vim.cmd[[
    let beacon_ignore_filetypes = ['dashboard']
    highlight BeaconDefault ctermbg=15 guibg=#dddddd
    autocmd ColorScheme *
        \ highlight link Beacon BeaconDefault |
        \ highlight BeaconDefault ctermbg=15 guibg=#dddddd
]]

local db = require('dashboard')
db.preview_command = 'cat'
db.preview_file_path = '~/.config/nvim/static/preview.txt'
db.preview_file_height = 6
db.preview_file_width = 57

db.custom_center = {
  {icon = '  ',
  desc = 'Find Recent Files                       ',
  shortcut = 'SPC f r'},
  {icon = '  ',
  desc = 'Find File                               ',
  shortcut = 'SPC f f'},
  {icon = '  ',
  desc = 'Find Word                               ',
  shortcut = 'SPC f w'},
  {icon = '  ',
  desc = 'Find Config Files                       ',
  shortcut = 'SPC f .'},
  {icon = '  ',
  desc ='Project View                            ',
  shortcut = 'SPC p v'},
}


-- Treesitter parser setup
require('nvim-treesitter.configs').setup {
    ensure_installed = { "lua", "rust", "toml" },
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting=false,
    },
    ident = { enable = true },
}





