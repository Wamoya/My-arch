return {
    'nvim-tree/nvim-tree.lua',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        local nvimtree = require('nvim-tree')

        -- Recommended settings from nvim-tree documentation
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        nvimtree.setup({
            view = {
                width = 35,
                relativenumber = true,
            },
            -- Change folder arrow icons
            renderer = {
                indent_markers = {
                    enable = true,
                },
                icons = {
                    glyphs = {
                        folder = {
                            arrow_closed = '',
                            arrow_open = '',
                        },
                    },
                },
            },
            -- Disable window_picker for explorer to work well with window splits
            actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    },
                },
            },
            filters = {
                custom = { '.DS_Store' },
            },
            git = {
                ignore = false,
            },
        })

        -- [[ Keymaps ]]
        vim.keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>')         -- Toggle file explorer
        vim.keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>') -- Toggle file explorer, opening current location
        vim.keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>')       -- Collapse file explorer
        vim.keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>')        -- Refresh file explore
    end
}
