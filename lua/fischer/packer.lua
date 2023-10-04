vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  use('wbthomason/packer.nvim')
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use('m4xshen/autoclose.nvim')
  use('windwp/nvim-ts-autotag')
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')
  use('hrsh7th/cmp-nvim-lsp')
  use('jose-elias-alvarez/null-ls.nvim')
  use('jay-babu/mason-null-ls.nvim')
--  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use{'nvim-treesitter/nvim-treesitter', commit = '7c27beddda182a178eafd978a96cc35738d6be98'} --last working commit
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('ThePrimeagen/vim-be-good')
  use('tpope/vim-fugitive')
  use('nvim-tree/nvim-web-devicons')
  use('christoomey/vim-tmux-navigator')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-nvim-lua')
  use('onsails/lspkind.nvim')
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end }
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    }
  }
end)
