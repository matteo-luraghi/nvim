-- web-devicons
return {
	"nvim-tree/nvim-web-devicons",
	config = function()
		require("nvim-web-devicons").setup({
			-- globally enable different highlight colors per icon (default to true)
			color_icons = true,
			-- globally enable default icons (default to false)
			default = true,
		})
	end,
}
