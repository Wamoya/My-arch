-- Set <space> as the leader key
vim.g.mapleader = " "

local keymap = vim.keymap



-- [[ Window management ]]
-- Manage splits
--keymap.set("n", "<leader>sv", "<C-w>v",         { desc = "Split vertically" })          -- Split vertically
--keymap.set("n", "<leader>sh", "<C-w>s",         { desc = "Split horizontally" })        -- Split horizontally
--keymap.set("n", "<leader>se", "<C-w>=",         { desc = "Reset size for all splits" }) -- Reset the size of all splits
--keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })       -- Close split with

-- Make split navigation easier with CTRL+<hjkl>
keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, desc = "Go to left split"  }) -- Focus on left split
keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, desc = "Go to down split"  }) -- Focus on down split
keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, desc = "Go to up split"    }) -- Focus on up split
keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, desc = "Go to right split" }) -- Focus on right split

-- Manage tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>",   { desc = "[T]ab [O]pen"         }) -- Open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "[T]ab close"          }) -- Close tab with
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>",     { desc = "[T]ab [N]ext"         }) -- Go to next tab
keymap.set("n", "<leader>tk", "<cmd>tabp<CR>",     { desc = "[T]ab [P]revious"     }) -- Go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "[T]ab current [F]ile" }) -- Open current file on a new tab



-- [[ Options ]]
-- Toggle
keymap.set("n", "<leader>ow", "<cmd>set wrap!<CR>", { desc = "[O]ption [W]rap" }) -- Toggle wrap
--keymap.set("n", "<leader>oh", "<cmd>nohlsearch<CR>", { desc = "[O]ption Remove [H]ighlights on search" }) -- Clear highlights on search
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Remove highlights on search" }) -- Clear highlights on search



-- [[ Colorscheme ]]
keymap.set("n", "<leader>c1", "<cmd>colorscheme tokyonight-night<CR>", { desc = "tokyonight-night" })
keymap.set("n", "<leader>c2", "<cmd>colorscheme desert<CR>",           { desc = "desert" })
keymap.set("n", "<leader>c3", "<cmd>colorscheme evening<CR>",          { desc = "evening" })
keymap.set("n", "<leader>c4", "<cmd>colorscheme slate<CR>",            { desc = "slate" })
keymap.set("n", "<leader>c5", "<cmd>colorscheme sorbet<CR>",           { desc = "sorbet" })
