-- [[ Explorer ]]
vim.g.netrw_liststyle = 3 -- Set explorer default listing format to 'tree'


local opt = vim.opt


-- [[ Editor ]]
-- Show relative line numbers (+ absolute line number on cursor)
opt.relativenumber = true
opt.number = true

-- Tabs and Indentation
opt.tabstop    = 4    -- 1 tab = 4 spaces
opt.shiftwidth = 4    -- Set indent width to 4 spaces
opt.expandtab  = true -- Convert tabs into spaces
opt.autoindent = true -- Mantain same indent when opening new line

-- Search settings
opt.ignorecase = true -- Ignore case by default
opt.smartcase  = true -- Assume case-sensitive search when using at least one upper case letter

-- Visibility
opt.wrap = false -- Don't wrap lines by default

-- Cursor
opt.cursorline = true -- Highlight the line where the cursor is

-- Backspace
opt.backspace = "indent,eol,start" -- Normal backspace behaviour

-- Clipboard
opt.clipboard="unnamedplus"


-- [[ Window management ]]
opt.splitright = true -- Split vertically to the right by default
opt.splitbelow = true -- Split horizontally down by default


-- [[ Movement ]]
-- Minimum number of lines to keep above and below the cursor
opt.scrolloff = 10


-- [[ Theme ]]
opt.termguicolors = true -- Enable terminal colors
opt.background = "dark"  -- Enable dark mode by default for any colorsheme
opt.signcolumn = "yes"   -- Reserve space for the sign column

-- [[ Basic autocommands ]]
-- Highlight when yanking text.
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",
    group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end
})

