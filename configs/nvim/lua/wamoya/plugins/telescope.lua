return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local telescope = require("telescope")
        local actions   = require("telescope.actions")
        local builtin   = require("telescope.builtin")

        telescope.setup({
            defaults = {
                path_display = { "truncate" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,                       -- Go up
                        ["<C-j>"] = actions.move_selection_next,                           -- Go down
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- Open selection on quick
                    }
                }
            }
        })

        telescope.load_extension("fzf")
        
        -- Keymaps

        local keymap = vim.keymap
        keymap.set("n", "<leader>sf", "<cmd>Telescope find_files<CR>",                                     { desc = "[S]earch [F]iles"        })
        keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep<CR>",                                      { desc = "Live [G]rep"             })
        keymap.set("n", "<leader>sc", function() builtin.find_files { cwd = vim.fn.stdpath "config" } end, { desc = "[S]earch [C]config file" })
        keymap.set("n", "<leader>sk", builtin.keymaps,                                                     { desc = "[S]earch [K]eymaps"      })
        keymap.set("n", "<leader>ss", "<cmd>Telescope grep_string<CR>",                                    { desc = "[S]earch [S]tring"       })
        keymap.set("n", "<leader>st", "<cmd>TodoTelescope<CR>",                                            { desc = "[S]earch [T]ODOs"        })

    end,
}
