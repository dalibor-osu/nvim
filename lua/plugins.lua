-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

-- Telescope for file management
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  requires = { {'nvim-lua/plenary.nvim'} }
}

-- Packer can manage itself
use 'wbthomason/packer.nvim'

-- treesitter
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')

-- lsp
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

-- autopairs
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

-- statusline
use('vim-airline/vim-airline')
use('vim-airline/vim-airline-themes')

vim.cmd([[
    let g:airline_theme = 'owo'
]])

-- autosave
use({
	"Pocco81/auto-save.nvim",
	config = function()
		 require("auto-save").setup {
			-- your config goes here
			-- or just leave it empty :)
		 }
	end,
})

-- copilot
use('github/copilot.vim')

-- Catppuccin theme
use { "catppuccin/nvim", as = "catppuccin" }

-- Discord rich presence
use ('andweeb/presence.nvim')

-- Better Haskell syntax highlighting
use ('neovimhaskell/haskell-vim')

end)
