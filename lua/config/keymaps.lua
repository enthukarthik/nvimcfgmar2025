----------------------------------------------------------------------------------------------------------------------------------------------
--                                                Neovim bindings and non plugin related                                                    --
----------------------------------------------------------------------------------------------------------------------------------------------

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

-- Misc keybindings
vim.keymap.set({ "n" }, "<leader>sa", "ggVG", { desc = "Select all..." })
-- vim.keymap.set({ "n" }, "<leader>ia", "=G", { desc = "Indent all..." })
vim.keymap.set({ "n" }, "<leader>rm", ":%s/<C-q><C-m>//g<CR>", { desc = "Remove ^M from text copied from windows to linux" })

----------------------------------------------------------------------------------------------------------------------------------------------
--                           Plugin keybindings/Plugin keybinding documentations                                                            --
----------------------------------------------------------------------------------------------------------------------------------------------

-- j,k - Up & Down
-- h - Parent directory
-- l - Expand and navigate
-- L - Open the current file/directory
-- q - quit MiniFiles
-- Use each window as a buffer to CUD directory/file. Confirm the changes with '='
vim.keymap.set({ "n" }, "<leader>.", "<cmd>lua MiniFiles.open()<CR>", { noremap = true, silent = true, desc = "Open mini files navigation" })

-- mini.comment
-- gcc - line comment toggle
-- gc<movement> - comment the movement line. e.g. gcip - comment inner paragraph
-- this plugin defines a textobject gc which covers the comments

-- nvim-treesitter incremental selection
-- <Enter> key starts incremental selection
-- <Enter> afterwards increases the selection to the parent node based on the treesitter parser tree
-- <Backspace> reduces the selection to the child node in the treesitter parser tree

-- nvim-treesitter-textobjects defines the following textobjects
-- af - around function
-- if - inside function
-- ac - around class
-- ic - inside class
-- as - around scope
-- <leader>a - swap the current function parameter with the next
-- <leader>A - swap the current function parameter with the previous
-- ]m - Goto next function start
-- ]] - Goto next class start
-- ]s - Goto next scope start
-- ]M - Goto next function end
-- ][ - Goto next class end
-- [m - Goto previous function start
-- [[ - Goto previous class start
-- [M - Goto previous function end
-- [] - Goto previous class end
-- local ts_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")
--
-- -- Repeat movement with ; and ,
-- -- ensure ; goes forward and , goes backward regardless of the last direction
-- vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move_next)
-- vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_previous)
--
-- -- vim way: ; goes to the direction you were moving.
-- -- vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move)
-- -- vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_opposite)
--
-- -- Optionally, make builtin f, F, t, T also repeatable with ; and ,
-- vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f_expr, { expr = true })
-- vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F_expr, { expr = true })
-- vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t_expr, { expr = true })
-- vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T_expr, { expr = true })

-- mini.bracketed
-- Target                                               Mappings    Lua function
-- Buffer                                               [B [b ]b ]B MiniBracketed.buffer()
-- Comment block                                        [C [c ]c ]C MiniBracketed.comment()
-- Diagnostic                                           [D [d ]d ]D MiniBracketed.diagnostic()
-- File on disk                                         [F [f ]f ]F MiniBracketed.file()
-- Indent change                                        [I [i ]i ]I MiniBracketed.indent()
-- Jump from jumplist inside current buffer             [J [j ]j ]J MiniBracketed.jump()
-- Location from location list                          [L [l ]l ]L MiniBracketed.location()
-- Old files                                            [O [o ]o ]O MiniBracketed.oldfile()
-- Quickfix entry from quickfix list                    [Q [q ]q ]Q MiniBracketed.quickfix()
-- Tree-sitter node and parents                         [T [t ]t ]T MiniBracketed.treesitter()
-- Undo states from specially tracked linear history    [U [u ]u ]U MiniBracketed.undo()
-- Window in current tab                                [W [w ]w ]W MiniBracketed.window()
-- Conflict marker                                      [X [x ]x ]X MiniBracketed.conflict()
-- Yank selection replacing latest put region           [Y [y ]y ]Y MiniBracketed.yank()
