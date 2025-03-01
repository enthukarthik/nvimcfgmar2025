return {
	{
		"echasnovski/mini.nvim",
		version = false,
		config = function()
			require("mini.icons").setup()		-- enable icons
			require("mini.git").setup()		-- enable git info
			require("mini.diff").setup()		-- enable git diff info
			require("mini.statusline").setup()	-- enable mini statusline
		end,
	},
}
