return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
            },
            "MunifTanjim/nui.nvim",
            "nvim-telescope/telescope-frecency.nvim",
            "nvim-telescope/telescope-file-browser.nvim",
            "xiyaowong/telescope-emoji.nvim",
            "ghassan0/telescope-glyph.nvim",
        },

        config = function()
            local telescope = require("telescope")
            local builtins = require("telescope.builtin")
            local actions = require("telescope.actions")

            vim.keymap.set("n", "<leader>ff", builtins.find_files, { noremap = true, silent = true, desc = "Fuzzy find files in pwd" })
            vim.keymap.set("n", "<leader>fg", builtins.live_grep, { noremap = true, silent = true, desc = "Find string in pwd" })
            vim.keymap.set("n", "<leader>fb", builtins.buffers, { noremap = true, silent = true, desc = "Fuzzy find from buffers" })
            vim.keymap.set("n", "<leader>fh", builtins.help_tags, { noremap = true, silent = true, desc = "Find telescope help docs" })
            vim.keymap.set("n", "<leader>fr", builtins.oldfiles, { noremap = true, silent = true, desc = "Fuzzy find recent files" })
            vim.keymap.set("n", "<leader>f*", builtins.grep_string, { noremap = true, silent = true, desc = "Find string under cursor in pwd" })
            vim.keymap.set("n", "<leader>fm", builtins.marks, { noremap = true, silent = true, desc = "Find marks saved for the project" })
            vim.keymap.set("n", "<leader>fs", builtins.lsp_document_symbols, { noremap = true, silent = true, desc = "Find symbols in the current buffer" })
            vim.keymap.set("n", "<leader>tf", ":Telescope file_browser<CR>", { noremap = true, silent = true, desc = "Open telescope file browser extension" })
            vim.keymap.set("n", "<leader>te", ":Telescope emoji<CR>", { noremap = true, silent = true, desc = "Open telescope emoji extension" })
            vim.keymap.set("n", "<leader>tg", ":Telescope glyph<CR>", { noremap = true, silent = true, desc = "Open telescope glyph extension" })
            vim.keymap.set("n", "<leader>tr", ":Telescope frecency<CR>", { noremap = true, silent = true, desc = "Open telescope frecency extension" })

            vim.keymap.set("n", "<leader>en", function()
                builtins.find_files { cwd = vim.fn.stdpath("config") }
            end, { desc = "Edit Neovim config files" })
            vim.keymap.set("n", "<leader>ep", function()
                builtins.find_files { cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy") }
            end, { desc = "Edit Neovim package files" })

            telescope.setup({
                defaults = {
                    path_display = { "smart" },
                    mappings = {
                        i = {
                            ["<Esc>"] = actions.close,
                        },
                    },
                },
                extensions = {
                    fzf = {}
                },
            })

            telescope.load_extension("fzf")
            telescope.load_extension("frecency")
            telescope.load_extension("file_browser")
            telescope.load_extension("emoji")
            telescope.load_extension("glyph")
        end,
    },
}
