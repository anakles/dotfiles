
function SetMyColors(color)
	color = color or "dracula"
	vim.cmd.colorscheme(color)

	-- Set transparent background
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

SetMyColors()
