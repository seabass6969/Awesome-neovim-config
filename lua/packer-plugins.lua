-- the plugin of the neovim config

vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {'dracula/vim', as = 'dracula'}
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
        require('my_statusline')
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
end)
