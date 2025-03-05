----------------------------------------------------------------------------------------------------------------------------------------------
--                                                Neovim bindings and non plugin related                                                    --
----------------------------------------------------------------------------------------------------------------------------------------------
-- Modes
-- n = normal mode
-- i = insert mode
-- v = visual mode
-- x = visual block mode
-- t = terminal mode
-- c = command mode
vim.keymap.set({ "i", "v" }, "jk", "<Esc>",{ noremap = true, desc = "Escape to normal mode,from INSERT or VISUAL, quicker with jk" })

-- Disable arrow keys in the normal mode
vim.keymap.set({ "n" }, "<Left>", "<cmd>echo 'Use h to move!!'<CR>")
vim.keymap.set({ "n" }, "<Right>", "<cmd>echo 'Use l to move!!'<CR>")
vim.keymap.set({ "n" }, "<Up>", "<cmd>echo 'Use k to move!!'<CR>")
vim.keymap.set({ "n" }, "<Down>", "<cmd>echo 'Use j to move!!'<CR>")

vim.keymap.set({ "n" }, "<Esc>", "<cmd>nohlsearch<CR>", { noremap = true, desc = "Clear highlighted text when pressing Esc in normal mode" })

-- Movement between panes
vim.keymap.set({ "n" }, "<C-h>", "<C-w>h", { noremap = true, desc = "Move focus to the left window" })
vim.keymap.set({ "n" }, "<C-j>", "<C-w>j", { noremap = true, desc = "Move focus to the lower window" })
vim.keymap.set({ "n" }, "<C-k>", "<C-w>k", { noremap = true, desc = "Move focus to the upper window" })
vim.keymap.set({ "n" }, "<C-l>", "<C-w>l", { noremap = true, desc = "Move focus to the right window" })

-- Spliting window panes
vim.keymap.set({ "n" }, "<leader>sv", "<C-w>v", { noremap = true, desc = "Split window vertically" })
vim.keymap.set({ "n" }, "<leader>sh", "<C-w>s", { noremap = true, desc = "Split window horizontally" })
vim.keymap.set({ "n" }, "<leader>se", "<C-w>=", { noremap = true, desc = "Make split window panes equal in size" })
vim.keymap.set({ "n" }, "<leader>sx", ":close<CR>", { noremap = true, desc = "Close the current split window" })

-- Resize window panes with arrow keys
vim.keymap.set({ "n" }, "<C-Up>", ":resize +2<CR>", { noremap = true, desc = "Increase the pane window size horizontally" })
vim.keymap.set({ "n" }, "<C-Down>", ":resize -2<CR>", { noremap = true, desc = "Decrease the pane window size horizontally" })
vim.keymap.set({ "n" }, "<C-Right>", ":vertical resize +2<CR>", { noremap = true, desc = "Increase the pane window size vertically" })
vim.keymap.set({ "n" }, "<C-Left>", ":vertical resize -2<CR>", { noremap = true, desc = "Decrease the pane window size vertically" })

-- Movement between buffers
vim.keymap.set({ "n" }, "<Tab>", "<cmd>bnext<CR>", { noremap = true, desc = "Move to the next buffer" })
vim.keymap.set({ "n" }, "<S-Tab>", "<cmd>bprevious<CR>", { noremap = true, desc = "Move to the previous buffer" })
vim.keymap.set({ "n" }, "<leader>k", "<cmd>bdelete<CR>", { noremap = true, desc = "Kill the buffer" })

-- Move text up or down
vim.keymap.set({ "x" }, "<S-j>", ":m '>+1<CR>gv-gv", { noremap = true, desc = "Move selected text down" })
vim.keymap.set({ "x" }, "<S-k>", ":m '<-2<CR>gv-gv", { noremap = true, desc = "Move selected text up" })

-- Better terminal navigation
vim.keymap.set({ "t" }, "<C-h>", "<C-\\><C-n><C-w>h", { noremap = true, desc = "Move from terminal to the left pane" })
vim.keymap.set({ "t" }, "<C-j>", "<C-\\><C-n><C-w>j", { noremap = true, desc = "Move from terminal to the below pane" })
vim.keymap.set({ "t" }, "<C-k>", "<C-\\><C-n><C-w>k", { noremap = true, desc = "Move from terminal to the above pane" })
vim.keymap.set({ "t" }, "<C-l>", "<C-\\><C-n><C-w>l", { noremap = true, desc = "Move from terminal to the right pane" })
vim.keymap.set({ "t" }, "<Esc>", "<C-\\><C-n>", { noremap = true, desc = "Exit terminal mode" })
vim.keymap.set({ "t" }, "jk", "<C-\\><C-n>", { noremap = true, desc = "Exit terminal mode" })

-- Visual selection remains after indentation
vim.keymap.set({ "v", "x" }, ">", ">gv", { noremap = true, desc = "Select the same visual selection once we're done with indentation" })
vim.keymap.set({ "v", "x" }, "<", "<gv", { noremap = true, desc = "Select the same visual selection once we're done with indentation" })

-- Other keybindings
vim.keymap.set({ "n" }, "<leader>sa", "ggVG", { noremap = true, desc = "Select all..." })
vim.keymap.set({ "n" }, "<leader>ia", "gg=G", { noremap = true, desc = "Indent all..." })
vim.keymap.set({ "n" }, "<leader>rm", ":%s/<C-q><C-m>//g<CR>", { noremap = true, desc = "Remove ^M from text copied from windows to linux" })
vim.keymap.set({ "n" }, "<leader>p", "<cmd>Lazy<CR>", { noremap = true, desc = "Launch plugin manager" })
vim.keymap.set({ "n" }, "<leader>q", "<cmd>wqa!<CR>", { noremap = true, desc = "Save all and quit Neovim" })
vim.keymap.set({ "n" }, "<leader>w", "<cmd>w!<CR>", { noremap = true, desc = "Save current file" })

----------------------------------------------------------------------------------------------------------------------------------------------
--                           Plugin keybindings/Plugin keybinding documentations                                                            --
----------------------------------------------------------------------------------------------------------------------------------------------

-- Oil keymap setup
-- <Esc> to close oil buffer
-- '..' to move to the parent directory
-- vim.keymap.set({ "n" }, "<leader>..", "<cmd>Oil --float<CR>", { noremap = true, silent = true, desc = "Launch oil" })

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

-- Repeat movement with ; and ,
-- ensure ; goes forward and , goes backward regardless of the last direction
-- vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move_next)
-- vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_previous)
--
-- vim way: ; goes to the direction you were moving.
-- vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move)
-- vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_opposite)
--
-- Optionally, make builtin f, F, t, T also repeatable with ; and ,
-- vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f_expr, { expr = true })
-- vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F_expr, { expr = true })
-- vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t_expr, { expr = true })
-- vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T_expr, { expr = true })

-- mini.ai defined more text objects with 'a' and 'i'

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

-- mini.surround
-- In normal mode
-- sa - [S]urround [a]dd {motion}{char}. E.g. saiw) - Surround add inside word with ')'
-- sd - [S]urround [d]elete {char}
-- sr - [S]urround [r]eplace {from char} {to char}

-- telescope keybindings
-- vim.keymap.set("n", "<leader>ff", builtins.find_files, { noremap = true, silent = true, desc = "Fuzzy find files in pwd" })
-- vim.keymap.set("n", "<leader>fg", builtins.live_grep, { noremap = true, silent = true, desc = "Find string in pwd" })
-- vim.keymap.set("n", "<leader>fb", builtins.buffers, { noremap = true, silent = true, desc = "Fuzzy find from buffers" })
-- vim.keymap.set("n", "<leader>fr", builtins.oldfiles, { noremap = true, silent = true, desc = "Fuzzy find recent files" })
-- vim.keymap.set("n", "<leader>f*", builtins.grep_string, { noremap = true, silent = true, desc = "Find string under cursor in pwd" })
-- vim.keymap.set("n", "<leader>fm", builtins.marks, { noremap = true, silent = true, desc = "Find marks saved for the project" })
-- vim.keymap.set("n", "<leader>fds", builtins.lsp_document_symbols, { noremap = true, silent = true, desc = "Find symbols in the current buffer" })
-- vim.keymap.set("n", "<leader>tf", ":Telescope file_browser<CR>", { noremap = true, silent = true, desc = "Open telescope file browser extension" })
-- vim.keymap.set("n", "<leader>te", ":Telescope emoji<CR>", { noremap = true, silent = true, desc = "Open telescope emoji extension" })
-- vim.keymap.set("n", "<leader>tg", ":Telescope glyph<CR>", { noremap = true, silent = true, desc = "Open telescope glyph extension" })
-- vim.keymap.set("n", "<leader>tr", ":Telescope frecency<CR>", { noremap = true, silent = true, desc = "Open telescope frecency extension" })
-- <Esc> to close telescope picker
-- <leader>en - Edit neovim files
-- <leader>ep - Edit neovim package files

-- which-key
-- <leader>?
