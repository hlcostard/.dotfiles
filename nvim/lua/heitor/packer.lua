-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                          , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim'} }
    }

    -- use('tomasiser/vim-code-dark')
    use({ 'rose-pine/neovim', as = 'rose-pine' })

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,}

        use('nvim-treesitter/playground')
        use('theprimeagen/harpoon')
        use('tpope/vim-fugitive')
        use('nvim-treesitter/nvim-treesitter-context')

        use {
          'VonHeikemen/lsp-zero.nvim',
          branch = 'v3.x',
          requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
          }
        }


        -- use {
        --     'VonHeikemen/lsp-zero.nvim',
        --     branch = 'v1.x',
        --     requires = {
        --         -- LSP Support
        --         {'neovim/nvim-lspconfig'},
        --         {'williamboman/mason.nvim'},
        --         {'williamboman/mason-lspconfig.nvim'},
        --
        --         -- Autocompletion
        --         {'hrsh7th/nvim-cmp'},
        --         {'hrsh7th/cmp-buffer'},
        --         {'hrsh7th/cmp-path'},
        --         {'saadparwaiz1/cmp_luasnip'},
        --         {'hrsh7th/cmp-nvim-lsp'},
        --         {'hrsh7th/cmp-nvim-lua'},
        --
        --         -- Snippets
        --         {'L3MON4D3/LuaSnip'},
        --         {'rafamadriz/friendly-snippets'},
        --     }
        -- }

        use('freddiehaddad/feline.nvim')
        use('nvim-tree/nvim-web-devicons')
        use('lewis6991/gitsigns.nvim')
        use('terrortylor/nvim-comment')

      end
      )

