-- Set <space> as the leader key
vim.g.mapleader = ' '

-- [[ Editor ]]
vim.keymap.set('n', '<leader>nh', '<cmd>nohlsearch<CR>', { desc = 'Clear highlights on search.'}) -- Clear highlights on search with <leader>nh


-- [[ Window management ]]
-- Manage splits
vim.keymap.set('n', '<leader>sv', '<C-w>v',         { desc = 'Split vertically' })          -- Split vertically with <leader>sv
vim.keymap.set('n', '<leader>sh', '<C-w>s',         { desc = 'Split horizontally' })        -- Split horizontally with <leader>sh
vim.keymap.set('n', '<leader>se', '<C-w>=',         { desc = 'Reset size for all splits' }) -- Reset the size of all splits
vim.keymap.set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' })       -- Close split with <leader>sx

-- Make split navigation easier with CTRL+<hjkl>
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true })

-- Manage tabs
vim.keymap.set('n', '<leader>to', '<cmd>tabnew<CR>',    { desc = 'Open new tab' })                   -- Open new tab with <leader>to
vim.keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>',  { desc = 'Close current tab' })              -- Close tab with <leader>tx
vim.keymap.set('n', '<leader>tn', '<cmd>tabn<CR>',      { desc = 'Go to next tab' })                 -- Go to next tab with <leader>tn
vim.keymap.set('n', '<leader>tp', '<cmd>tabp<CR>',      { desc = 'Go to previous tab' })             -- Go to previous tab with <leader>tp
vim.keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>',  { desc = 'Open current file on a new tab' }) -- Open current file on a new tab
