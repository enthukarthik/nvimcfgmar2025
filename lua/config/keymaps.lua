-- Make sure to setup `mapleader` and `maplocalleader` since lot of other mapping depends on this
-- Lazy.nvim depends on this too
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set({ "i", "v" }, "jk", "<Esc>",{ noremap = true, silent = true, desc = "Escape to normal mode,from INSERT or VISUAL, quicker with jk" })

-- Keys to remember
-- j,k - Up & Down
-- h - Parent directory
-- l - Expand and navigate
-- L - Open the current file/directory
-- q - quit MiniFiles
-- Use each window as a buffer to CUD directory/file
vim.keymap.set({ "n" }, "<leader>.", "<cmd>lua MiniFiles.open()<CR>", { noremap = true, silent = true, desc = "Open mini files navigation" })

