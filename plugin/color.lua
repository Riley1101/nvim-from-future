function ColorSchemes(color)
	color = color or "tokyonight-moon"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0,"Normal",{
		bg = "none"
	})
end
ColorSchemes()
