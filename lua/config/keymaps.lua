-- Make sure to setup `mapleader` and `maplocalleader` since lot of other mapping depends on this
-- Lazy.nvim depends on this too
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set({ "i", "v" }, "jk", "<Esc>",{ noremap = true, silent = true, desc = "Escape to normal mode,from INSERT or VISUAL, quicker with jk" })

vim.keymap.set({ "n" }, "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear highlighted text when pressing Esc in normal mode" })

vim.keymap.set({ "t" }, "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Movement between panes
vim.keymap.set({ "n" }, "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set({ "n" }, "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set({ "n" }, "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set({ "n" }, "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Movement between buffers
vim.keymap.set({ "n" }, "<S-l>", ":bnext<CR>", { desc = "Move to the next buffer" })
vim.keymap.set({ "n" }, "<S-h>", ":bprevious<CR>", { desc = "Move to the previous buffer" })
vim.keymap.set({ "n" }, "<S-d>", ":bdelete<CR>", { desc = "Close the buffer" })

-- Keys to remember
-- j,k - Up & Down
-- h - Parent directory
-- l - Expand and navigate
-- L - Open the current file/directory
-- q - quit MiniFiles
-- Use each window as a buffer to CUD directory/file
vim.keymap.set({ "n" }, "<leader>.", "<cmd>lua MiniFiles.open()<CR>", { noremap = true, silent = true, desc = "Open mini files navigation" })

