-- the plugin of the neovim config

vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use({
      'glepnir/galaxyline.nvim',
      branch = 'main',
      -- your statusline
      config = function()
        require('newstatusline')
      end,
      -- some optional icons
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    })
    use 'preservim/nerdtree'
    use 'ryanoasis/vim-devicons'
    use 'Xuyuanp/nerdtree-git-plugin'
    use 'mhinz/vim-startify'
    use 'Pocco81/auto-save.nvim'
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use 'jose-elias-alvarez/null-ls.nvim'
    use "nvim-lua/plenary.nvim"
    use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }
    use { 'ibhagwan/fzf-lua',
      -- optional for icon support
      requires = { 'nvim-tree/nvim-web-devicons' }
    }
    use 'mattn/emmet-vim'
    use 'kdav5758/TrueZen.nvim'
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "rafamadriz/friendly-snippets"
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'm4xshen/autoclose.nvim'
    use 'p00f/nvim-ts-rainbow'
end)


