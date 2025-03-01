return {
	{
		"ellisonleao/gruvbox.nvim",
		lazy = true,
		priority = 1000,
		opts = {},
		config = function(_, opts)
		end,
	},
	{
		"sainnhe/gruvbox-material",
		lazy = true,
		priority = 1000,
		opts = {},
		config = function(_, opts)
		end,
	},
	{
		-- tokyonight themes in the order of bright to dark
		-- tokyonight-day, tokyonight-storm, tokyonight-moon, tokyonight-night
		"folke/tokyonight.nvim",
		lazy = true,
		priority = 1000,
		opts = {},
		config = function(_, opts)
		end,
	},
	{
		"tiagovla/tokyodark.nvim",
		lazy = true,
		priority = 1000,
		opts = {},
		config = function(_, opts)
		end,
	},
	{
		-- catppuccin themes in the order of bright to dark
		-- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
		"catppuccin/nvim", 
		lazy = true,
		name = "catppuccin", 
		priority = 1000,
		opts = {},
		config = function(_, opts)
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = true,
		priority = 1000,
		opts = {},
		config = function(_, opts)
		end,
	},
	{
		"navarasu/onedark.nvim",
		lazy = true,
		priority = 1000,
		opts = {
			style = "darker",
			toggle_style_key = "<leader>ts",
			toggle_style_list = {"dark","darker","cool","deep","warm","warmer","light"},
		},
		config = function(_, opts)
			require("onedark").setup(opts)
		end,
	},
	{
		-- onelight, onedark, onedark_vivid, onedark_dark
		"olimorris/onedarkpro.nvim",
		lazy = true,
		priority = 1000,
		opts = {},
		config = function(_, opts)
		end,
	},
	{
		"sainnhe/sonokai",
		lazy = true,
		priority = 1000,
		opts = {},
		config = function(_, opts)
		end,
	},
	{
		"tomasr/molokai",
		lazy = true,
		priority = 1000,
		opts = {},
		config = function(_, opts)
		end,
	},
	{
		-- ayu-light, ayu-mirage, ayu-dark
		"Shatur/neovim-ayu",
		lazy = true,
		priority = 1000,
		opts = {},
		config = function(_, opts)
		end,
	},
}
