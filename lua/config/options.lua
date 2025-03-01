vim.opt.number = true                  -- enable line number
vim.opt.relativenumber = true          -- enable relative line number
vim.opt.numberwidth = 2                -- always keep the number width to 2 to avoid text juggle

vim.opt.mouse = "a"                    -- enable mouse mode, can be useful for resizing splits, if required

vim.opt.showmode = false               -- Don't show mode, since it's already part of status line

vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.breakindent = true             -- Break indent for long lines so that they look visually indented

vim.opt.undofile = true                -- Save undo history

vim.opt.ignorecase = true              -- Case insensitive search
vim.opt.smartcase = true               -- unless capital letters are in the search term

vim.opt.signcolumn = "yes"             -- Keep signcolumn on by default, useful in LSP and Git

vim.opt.updatetime = 250               -- Decreate update time to swap file
vim.opt.timeoutlen = 300               -- Decrease mapped keymap sequence wait time (jk mapping for example)

vim.opt.inccommand = "split"           -- Preview substitution live, as you type

vim.opt.cursorline = true              -- Highlight the entire line where the cursor is

vim.opt.scrolloff = 4                  -- Minimal number of screen lines to keep above and below the cursor
vim.opt.sidescrolloff = 4              -- Minimal number of screen characters to scroll while navigating horizontally

vim.opt.termguicolors = true           -- Enable termguicolors to make some colorschemes happy
vim.opt.background = "dark"            -- Background color preference

-- Tab settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smarttab = true

-- How splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display some whitespace characters in the editor
vim.opt.list = true
vim.opt.listchars = { tab = "→ ", trail = "·", extends = "»", precedes = "«", eol = "¬", nbsp = '␣' }

-- Sync clipboard between OS and Neovim
-- Schedule the setting after 'UiEnter' because it can increase the startup-time.
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)
