return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'nvim-treesitter/playground' 
  use 'theprimeagen/harpoon'
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
  use {
      "windwp/nvim-ts-autotag",
      wants = "nvim-treesitter",
      event = "InsertEnter",
      config = function()
          require("nvim-ts-autotag").setup { enable = true }
      end,
  }
  use 'MunifTanjim/prettier.nvim'
  use('neovim/nvim-lspconfig')
  use('jose-elias-alvarez/null-ls.nvim')
  use 'wakatime/vim-wakatime'
  use 'simrat39/rust-tools.nvim'
  use 'sbdchd/neoformat'   
    
  use "EdenEast/nightfox.nvim"
  use({
      'weilbith/nvim-code-action-menu',
      cmd = 'CodeActionMenu',
  })
  -- dap debugger added
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use 'folke/neodev.nvim'
  use {
    "williamboman/mason.nvim",
    "jay-babu/mason-nvim-dap.nvim",
}
use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"} }

-- treesitter context
use({
    "romgrk/nvim-treesitter-context",
})
use ({
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
})

use "tpope/vim-surround"

use "numToStr/FTerm.nvim"

-- docs generator
use {
    "danymat/neogen",
    config = function()
        require('neogen').setup {

        }
    end,
    requires = "nvim-treesitter/nvim-treesitter",
    -- Uncomment next line if you want to follow only stable versions
    -- tag = "*"
}

-- lua line
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

-- color 
use { "catppuccin/nvim", as = "catppuccin" }
use "folke/zen-mode.nvim" 
end)

