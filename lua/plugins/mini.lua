return {
    {
        "echasnovski/mini.nvim",
        version = false,
        config = function()
            -- mini.statusline related
            require("mini.icons").setup()       -- enable icons
            require("mini.git").setup()         -- enable git info
            require("mini.diff").setup()        -- enable git diff info
            require("mini.statusline").setup()  -- enable mini statusline

            -- mini.files setup
            require("mini.files").setup()       -- enable filesystem navigation through buffer

            -- tabline setup
            require("mini.tabline").setup()
        end,
    },
}
