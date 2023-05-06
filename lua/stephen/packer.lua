-- This file can be loaded by calling `lua require('plugins')` from your init.vim  

-- Only required if you have packer configured as `opt` 
vim.cmd [[packadd packer.nvim]]  

return require('packer').startup(function(use)   
    -- Packer can manage itself   
    use 'wbthomason/packer.nvim'

    -- Telescope is used for fuzzy finding files
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Color schemes 
    use 'folke/tokyonight.nvim'
    use 'rebelot/kanagawa.nvim'
    use 'morhetz/gruvbox'
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Treesitter for language syntax highlighting
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    --  Harpoon for file navigation
    use('theprimeagen/harpoon')

    -- Awesome  undo support
    use('mbbill/undotree')

    -- Git support
    use('tpope/vim-fugitive')

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    -- File tree replacement for NetRW
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function()
            require("nvim-tree").setup {}
        end
    }
end)
