-- Make sure to setup `mapleader` and `maplocalleader` since lot of other mapping depends on this
-- Lazy.nvim depends on this too
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set({ "i", "v" }, "jk", "<Esc>",{ noremap = true, silent = true, desc = "Escape to normal mode,from INSERT or VISUAL, quicker with jk" })

-- Disable arrow keys in the normal mode
vim.keymap.set({ "n" }, "<Left>", "<cmd>echo 'Use h to move!!'<CR>")
vim.keymap.set({ "n" }, "<Right>", "<cmd>echo 'Use l to move!!'<CR>")
vim.keymap.set({ "n" }, "<Up>", "<cmd>echo 'Use k to move!!'<CR>")
vim.keymap.set({ "n" }, "<Down>", "<cmd>echo 'Use j to move!!'<CR>")

vim.keymap.set({ "n" }, "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear highlighted text when pressing Esc in normal mode" })

-- Movement between panes
vim.keymap.set({ "n" }, "<C-h>", "<C-w>h", { desc = "Move focus to the left window" })
vim.keymap.set({ "n" }, "<C-j>", "<C-w>j", { desc = "Move focus to the lower window" })
vim.keymap.set({ "n" }, "<C-k>", "<C-w>k", { desc = "Move focus to the upper window" })
vim.keymap.set({ "n" }, "<C-l>", "<C-w>l", { desc = "Move focus to the right window" })

-- Spliting window panes
vim.keymap.set({ "n" }, "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set({ "n" }, "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set({ "n" }, "<leader>se", "<C-w>=", { desc = "Make split window panes equal in size" })
vim.keymap.set({ "n" }, "<leader>sx", ":close<CR>", { desc = "Close the current split window" })

-- Resize window panes with arrow keys
vim.keymap.set({ "n" }, "<C-Up>", ":resize +2<CR>", { desc = "Increase the pane window size horizontally" })
vim.keymap.set({ "n" }, "<C-Down>", ":resize -2<CR>", { desc = "Decrease the pane window size horizontally" })
vim.keymap.set({ "n" }, "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase the pane window size vertically" })
vim.keymap.set({ "n" }, "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease the pane window size vertically" })

-- Movement between buffers
vim.keymap.set({ "n" }, "<S-l>", "<cmd>bnext<CR>", { desc = "Move to the next buffer" })
vim.keymap.set({ "n" }, "<S-h>", "<cmd>bprevious<CR>", { desc = "Move to the previous buffer" })
vim.keymap.set({ "n" }, "<S-d>", "<cmd>bdelete<CR>", { desc = "Close the buffer" })

-- Better terminal navigation
vim.keymap.set({ "t" }, "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Move from terminal to the left pane" })
vim.keymap.set({ "t" }, "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Move from terminal to the below pane" })
vim.keymap.set({ "t" }, "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Move from terminal to the above pane" })
vim.keymap.set({ "t" }, "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Move from terminal to the right pane" })
vim.keymap.set({ "t" }, "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keys to remember
-- j,k - Up & Down
-- h - Parent directory
-- l - Expand and navigate
-- L - Open the current file/directory
-- q - quit MiniFiles
-- Use each window as a buffer to CUD directory/file. Confirm the changes with '='
vim.keymap.set({ "n" }, "<leader>.", "<cmd>lua MiniFiles.open()<CR>", { noremap = true, silent = true, desc = "Open mini files navigation" })

-- Misc keybindings
vim.keymap.set({ "n" }, "<leader>a", "ggVG", { desc = "Select all..." })
vim.keymap.set({ "n" }, "<leader>ia", "ggVG=", { desc = "Indent all..." })
vim.keymap.set({ "n" }, "<leader>rm", ":%s/<C-q><C-m>//g<CR>", { desc = "Remove ^M from text copied from windows to linux" })
