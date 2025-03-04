return {
    {
        "stevearc/oil.nvim",
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        opts = {
            keymaps = {
                ["<Esc>"] = { "actions.close", mode = "n" },
                [".."] = { "actions.parent", mode = "n" },
            },

            view_options = {
                show_hidden = true
            },
        },
        lazy = false,
        config = function(_, opts)
            require("oil").setup(opts)
        end
    }
}
