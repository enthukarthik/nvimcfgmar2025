return {
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
        init = function()
            local tsconfig = require("nvim-treesitter.configs")
            tsconfig.setup({
                textobjects = {
                    select = {
                        enable = true,

                        -- Automatically jump forward to textobj if the cursor is not on any node,
                        -- similar to targets.vim
                        lookahead = true,

                        keymaps = {
                            -- You can use the capture groups defined in textobjects.scm
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                            -- You can also use captures from other query groups like `locals.scm`
                            ["as"] = { query = "@local.scope", query_group = "locals", desc = "Select language scope" },
                        },
                        -- You can choose the select mode (default is charwise 'v')
                        selection_modes = {
                            -- 'v' means select the capture group char by char during {action}
                            -- 'V' means select the capture group line by line during {action}
                            --      so if there is something on the line where capture group
                            --      starts or ends it also gets the {action}
                            -- 'C-v' (C-q in windows) starts block wise selection during {action}
                            --      virtualedit setting having "block" will make it less jarring
                            ['@parameter.outer'] = 'v',
                            ['@function.outer'] = 'v',
                            ['@class.outer'] = 'V',
                        },
                        -- If you set this to `true` (default is `false`) then any textobject is
                        -- extended to include preceding or succeeding whitespace. Succeeding
                        -- whitespace has priority in order to act similarly to the built-in
                        -- `ap`.
                        --
                        include_surrounding_whitespace = true,
                    },

                    swap = {
                        enable = true,
                        swap_next = {
                            ["<leader>a"] = "@parameter.inner",
                        },
                        swap_previous = {
                            ["<leader>A"] = "@parameter.inner",
                        },
                    },

                    move = {
                        enable = true,
                        set_jumps = true, -- whether to set jumps in the jumplist
                        goto_next_start = {
                            ["]m"] = "@function.outer",
                            ["]]"] = { query = "@class.outer", desc = "Next class start" },
                            --
                            -- You can use regex matching (i.e. lua pattern) and/or pass a list in a "query" key to group multiple queries.
                            ["]o"] = "@loop.*",
                            -- ["]o"] = { query = { "@loop.inner", "@loop.outer" } }
                            --
                            -- You can pass a query group to use query from `queries/<lang>/<query_group>.scm file in your runtime path.
                            -- Below example nvim-treesitter's `locals.scm` and `folds.scm`. They also provide highlights.scm and indent.scm.
                            ["]s"] = { query = "@local.scope", query_group = "locals", desc = "Next scope" },
                            ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
                        },
                        goto_next_end = {
                            ["]M"] = "@function.outer",
                            ["]["] = "@class.outer",
                        },
                        goto_previous_start = {
                            ["[m"] = "@function.outer",
                            ["[["] = "@class.outer",
                        },
                        goto_previous_end = {
                            ["[M"] = "@function.outer",
                            ["[]"] = "@class.outer",
                        },
                        -- Below will go to either the start or the end, whichever is closer.
                        -- Use if you want more granular movements
                        -- Make it even more gradual by adding multiple queries and regex.
                        goto_next = {
                            ["]d"] = "@conditional.outer",
                        },
                        goto_previous = {
                            ["[d"] = "@conditional.outer",
                        }
                    },

                },
            })
        end,
    },
}
