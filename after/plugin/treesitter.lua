
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust","javascript","typescript","python","help" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  autotag = {
      enable = true,
  },
  -- Automatically install missing parsers when entering buffer
  auto_install = true,
  highlight = {
	  enable = true,
	  additional_vim_regex_highlighting = false,
  },
}
