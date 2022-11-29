
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- The package manager

    -- COLOR AND VISUALS
    use {
        'nvim-treesitter/nvim-treesitter', -- Parser generator
        run = ':TSUpdate'
    }

    use 'ellisonleao/gruvbox.nvim' -- Gruvbox color scheme
    use 'folke/tokyonight.nvim'    -- Tokyonight color scheme
    use 'tanvirtin/monokai.nvim'   -- Monokai color scheme
    use 'navarasu/onedark.nvim'    -- Onedark color scheme
    use 'shaunsingh/nord.nvim'     -- Nord color scheme
    use 'dracula/vim'              -- Dracula color scheme
    use 'overcache/NeoSolarized'   -- Solarized color scheme

    use 'norcalli/nvim-colorizer.lua'         -- Color hexcodes
    use 'kyazdani42/nvim-web-devicons'        -- Use icons
    use 'lukas-reineke/indent-blankline.nvim' -- Customize indentation
    use 'danilamihailov/beacon.nvim'          -- Highlight cursor after jump
    use 'nvim-lualine/lualine.nvim'           -- Bottom tray
    use 'glepnir/dashboard-nvim'              -- Start dashboard
    use 'RRethy/vim-illuminate'               -- Illuminate same occurrances

    -- TOOLS
    use {
        'nvim-telescope/telescope.nvim', -- Telescope fuzzy file search
        tag = '0.1.0',
        requires = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
        }
    }
    use {
        "folke/todo-comments.nvim",  -- Highlight and list todos
        requires = "nvim-lua/plenary.nvim"
    }
    use 'voldikss/vim-floaterm'    -- Floating terminal
    use 'kyazdani42/nvim-tree.lua' -- File tree
    use 'folke/trouble.nvim'       -- Show issues in a file

    -- EDITOR
    use 'windwp/nvim-autopairs'    -- Automatic bracket pairs
    use 'numToStr/Comment.nvim'    -- Comment shortcut
    use 'lewis6991/impatient.nvim' -- Increase loading speed
    use 'haya14busa/incsearch.vim' -- Better incremental search

    -- LSP
    use 'neovim/nvim-lspconfig'             -- Configure neovim LSP
    use 'williamboman/mason.nvim'           -- Streamlined LSP download
    use 'williamboman/mason-lspconfig.nvim' -- Adapt mason to nvim lsp
    use 'simrat39/rust-tools.nvim'          -- Set up lspconfig for rust
    use 'p00f/clangd_extensions.nvim'       -- Set up lspconfig for c++

    use 'hrsh7th/nvim-cmp'     -- Autocomplete framework
    use 'hrsh7th/cmp-nvim-lua' -- Complete for neovim LUA
    use 'hrsh7th/cmp-path'     -- Complete for pathnames
    use 'hrsh7th/cmp-buffer'   -- Complete from words in buffer
    use 'hrsh7th/cmp-vsnip'    -- Vscode-like snippets for nvim
    use 'hrsh7th/vim-vsnip'    -- Vscode-like snippets
    use 'hrsh7th/cmp-nvim-lsp' -- Complete for lsp recommendations
    use 'hrsh7th/cmp-nvim-lsp-signature-help' -- Add parameters to functions
end)


