return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function () 
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                -- The first 7 parsers must be installed
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", 
                    "cpp", "c_sharp", "python", "rust" },
                sync_install = false,
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },  
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<Enter>",             -- Start selecting the treesitter node currently under the cursor
                        node_incremental = "<Enter>",           -- Expand the selection to the treesitter parent node
                        scope_incremental = false,              -- Select the entire scope for the node selected
                        node_decremental = "<Backspace>",       -- Decrease the selection to the treesitter child node
                    },
                },
            })
        end
    }
}
