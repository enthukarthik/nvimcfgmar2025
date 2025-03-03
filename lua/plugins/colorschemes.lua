return {
    {
        -- ayu-light, ayu-mirage, ayu-dark
        "Shatur/neovim-ayu",
        lazy = true,
        priority = 1000,
        opts = {},
        config = function(_, opts)
            vim.cmd.colorscheme("ayu-dark")
        end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        opts = {
          --  transparent_mode = true,
        },
        config = function(_, opts)
            require("gruvbox").setup(opts)
            vim.cmd.colorscheme("gruvbox")
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
}
