-- Set <space> as the leader key
vim.g.mapleader = ' '

-- [[ Editor ]]
vim.keymap.set('n', '<leader>nh', '<cmd>nohlsearch<CR>') -- Clear highlights on search with <leader>nh


-- [[ Window management ]]
-- Manage splits
vim.keymap.set('n', '<leader>sv', '<C-w>v')         -- Split vertically with <leader>sv
vim.keymap.set('n', '<leader>sh', '<C-w>s')         -- Split horizontally with <leader>sh
vim.keymap.set('n', '<leader>se', '<C-w>=')         -- Reset the size of all splits
vim.keymap.set('n', '<leader>sx', '<cmd>close<CR>') -- Close split with <leader>sx

-- Make split navigation easier with CTRL+<hjkl>
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true })

-- Manage tabs
vim.keymap.set('n', '<leader>to', '<cmd>tabnew<CR>')   -- Open new tab with <leader>to
vim.keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>') -- Close tab with <leader>tx
vim.keymap.set('n', '<leader>tn', '<cmd>tabn<CR>')     -- Go to next tab with <leader>tn
vim.keymap.set('n', '<leader>tp', '<cmd>tabp<CR>')     -- Go to previous tab with <leader>tp
vim.keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>') -- Open current file on a new tab
