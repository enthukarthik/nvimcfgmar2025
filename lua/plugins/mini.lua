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

            -- Enable comment toggling
            require("mini.comment").setup()

            -- Enable going forward/backward with square brackets
            require("mini.bracketed").setup()

            -- Enable mini.surround
            require("mini.surround").setup()

            -- Enable more textobjects with mini.ai
            require("mini.ai").setup()

            local miniclue = require("mini.clue");
            miniclue.setup({                   -- cute prompts about bindings
                triggers = {
                    { mode = "n", keys = "<Leader>" },
                    { mode = "x", keys = "<Leader>" },

                    -- Built-in completion
                    { mode = "i", keys = "<C-x>" },

                    -- `g` key
                    { mode = "n", keys = "g" },
                    { mode = "x", keys = "g" },

                    -- Marks
                    { mode = "n", keys = "'" },
                    { mode = "n", keys = "`" },
                    { mode = "x", keys = "'" },
                    { mode = "x", keys = "`" },

                    -- Registers
                    { mode = "n", keys = '"' },
                    { mode = "x", keys = '"' },
                    { mode = "i", keys = "<C-r>" },
                    { mode = "c", keys = "<C-r>" },

                    -- Window commands
                    { mode = "n", keys = "<C-w>" },

                    -- `z` key for folds
                    { mode = "n", keys = "z" },
                    { mode = "x", keys = "z" },

                    -- Bracketed
                    { mode = "n", keys = "[" },
                    { mode = "n", keys = "]" },
                },
                clues = {
                    miniclue.gen_clues.builtin_completion(),
                    miniclue.gen_clues.g(),
                    miniclue.gen_clues.marks(),
                    miniclue.gen_clues.registers(),
                    miniclue.gen_clues.windows(),
                    miniclue.gen_clues.z(),
                },
            });
        end,
    }
}
