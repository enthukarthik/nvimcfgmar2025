return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function () 
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = {
                    "c", 
                    "lua", 
                    "vim", 
                    "vimdoc", 
                    "query", 
                    "markdown",
                    "markdown_inline",
                    -- The above 7 must be installed
                    "asm",
                    "bash",
                    "c_sharp",
                    "cmake",
                    "comment",
                    "commonlisp",
                    "cpp",
                    "css",
                    "csv",
                    "cuda",
                    "diff",
                    "disassembly",
                    "dockerfile",
                    "dot",
                    "editorconfig",
                    "git_config",
                    "git_rebase",
                    "gitattributes",
                    "gitcommit",
                    "gitignore",
                    "glsl",
                    "go",
                    "haskell",
                    "haskell_persistent",
                    "hlsl",
                    "html",
                    "http",
                    "ini",
                    "javascript",
                    "json",
                    "json5",
                    "jsonnet",
                    "kusto",
                    "latex",
                    "llvm",
                    "luadoc",
                    "make",
                    "nasm",
                    "ninja",
                    "objdump",
                    "perl",
                    "powershell",
                    "python",
                    "racket",
                    "regex",
                    "rust",
                    "scala",
                    "scheme",
                    "ssh_config",
                    "tmux",
                    "toml",
                    "tsx",
                    "typescript",
                    "xml",
                    "yaml",
                    "zig",
                },
                sync_install = false,
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },  
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<Enter>", -- set to `false` to disable one of the mappings
                        node_incremental = "<Enter>",
                        scope_incremental = false,
                        node_decremental = "<Backspace>",
                    },
                },
            })
        end
    }
}
