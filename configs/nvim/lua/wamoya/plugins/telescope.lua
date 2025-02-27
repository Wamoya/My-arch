return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                path_display = { 'truncate' },
                mappings = {
                    i = {
                        ['<C-k>'] = actions.move_selection_previous,                       -- Go up
                        ['<C-j>'] = actions.move_selection_next,                           -- Go down
                        ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist, -- Open selection on quick
                    }
                }
            }
        })

        telescope.load_extension('fzf')

        -- Keymaps
        vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>',  { desc = 'Fuzzy find files in working directory' })
        vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>',   { desc = 'Live grep files in working directory' })
        vim.keymap.set('n', '<leader>fn', function()
            require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config' }
        end, { desc = 'Search Neovim files' })
        vim.keymap.set('n', '<leader>fk', require('telescope.builtin').keymaps, { desc = 'Fuzzy find keymaps' })
        vim.keymap.set('n', '<leader>fs', '<cmd>Telescope grep_string<CR>', { desc = 'Live grep string under cursor' })
    end,
}
