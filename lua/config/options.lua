vim.opt.number = true                  -- enable line number
vim.opt.relativenumber = true          -- enable relative line number
vim.opt.numberwidth = 2                -- always keep the number width to 2 to avoid text juggle

vim.opt.mouse = "a"                    -- enable mouse mode, can be useful for resizing splits, if required

vim.opt.showmode = false               -- Don't show mode, since it's already part of status line

vim.opt.smartindent = true             -- Do smart auto indenting when starting new line
vim.opt.autoindent = true              -- It should be on when smartindent is on
vim.opt.breakindent = true             -- Break indent for long lines so that they look visually indented

vim.opt.undofile = true                -- Save undo history

vim.opt.ignorecase = true              -- Case insensitive search
vim.opt.smartcase = true               -- unless capital letters are in the search term
vim.opt.hlsearch = true                -- highlight the search term

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

-- :h fo-table. Format options
vim.opt.formatoptions = {}
vim.opt.formatoptions = {
    ["1"] = true, -- Don't break after one letter word
    ["2"] = true, -- Use indent from 2nd line of a paragraph
    q = true,     -- Continue comments with gq"
    n = true,     -- Recognize numbered list
    l = true,     -- Don't format when a line is alredy longer than textwidth when insert started
    j = true,     -- Remove comment leader when joining lines
    v = true,     -- Only break at a blank during the current insert command
    r = false,    -- Don't continue comments when pressing enter
    o = false,    -- Don't insert comment leader during o or O in normal mode
    c = false,    -- Don't auto-wrap comments using textwidth
    t = false,    -- Don't auto-wrap text using textwidth
}

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
