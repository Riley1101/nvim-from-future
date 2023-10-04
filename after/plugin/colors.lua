function ColorMyPencils(color)
	color = color or "catppuccin-mocha"
    -- set transparent background 
	vim.cmd.colorscheme(color)
end

ColorMyPencils()

