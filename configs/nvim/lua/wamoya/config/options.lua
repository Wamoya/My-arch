-- [[ Explorer ]]
vim.g.netrw_liststyle = 3 -- Set explorer default listing format to 'tree'


-- [[ Editor ]]
-- Show relative line numbers (+ absolute line number on cursor)
vim.opt.relativenumber = true
vim.opt.number = true

-- Tabs and Indentation
vim.opt.tabstop    = 4    -- 1 tab = 4 spaces
vim.opt.shiftwidth = 4    -- Set indent width to 4 spaces
vim.opt.expandtab  = true -- Convert tabs into spaces
vim.opt.autoindent = true -- Mantain same indent when opening new line

-- Search settings
vim.opt.ignorecase = true -- Ignore case by default
vim.opt.smartcase  = true -- Assume case-sensitive search when using at least one upper case letter

-- Visibility
vim.opt.wrap = false -- Don't wrap lines by default

-- Cursor
vim.opt.cursorline = true -- Highlight the line where the cursor is

-- Backspace
vim.opt.backspace = "indent,eol,start" -- Normal backspace behaviour

-- Clipboard
vim.opt.clipboard="unnamedplus"


-- [[ Window management ]]
vim.opt.splitright = true -- Split verically to the right
vim.opt.splitbelow = true -- Split horizontally to the bottom


-- [[ Movement ]]
-- Minimum number of lines to keep above and below the cursor
vim.opt.scrolloff = 10


-- [[ Theme ]]
vim.opt.termguicolors = true -- Enable terminal colors
vim.opt.background = "dark"  -- Enable dark mode by default for any colorsheme
vim.opt.signcolumn = "yes"   -- Reserve space for the sign column
