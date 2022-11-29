local set = vim.opt

-- set the file encoding to contain all characters
set.fileencoding = 'utf-8'

-- relative numbers with one actual number
set.relativenumber = true
set.nu = true

-- highlight the line the cursor is on
set.cursorline = true

-- enable mouse usage
set.mouse = 'a'

-- don't wrap lines around screen
set.wrap = false

-- disable erro bell sound
set.errorbells = true;

-- set tab size to 4
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true

-- automatically indent
set.smartindent = true

-- better searching
set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

-- keep recently closed buffers hidden
set.hidden = true

-- history
set.swapfile = false
set.backup = false

-- split new windows in better direction
set.splitbelow = true
set.splitright = true

-- have some scrolloff
set.scrolloff = 8
set.termguicolors = true

-- lsp error displays
set.cmdheight = 2
set.signcolumn = 'yes'

-- maximum character width marker
set.colorcolumn = '80'

-- automatically read files
vim.cmd([[set autoread]])
