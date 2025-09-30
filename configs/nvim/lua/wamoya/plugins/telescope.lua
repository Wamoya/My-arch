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

        local pickers = require('telescope.pickers')
        local finders = require('telescope.finders')
        local action_state = require('telescope.actions.state')
        local conf = require('telescope.config').values
        local previewers = require('telescope.previewers')

        local function choose_template()
            local templates_path = vim.fn.stdpath("config") .. "/snippets/"
            
            pickers.new({}, {
                prompt_title = "Choose a template",
                finder = finders.new_oneshot_job({ "ls", templates_path }, {}),
                sorter = conf.generic_sorter({}),
                previewer = previewers.new_termopen_previewer({
                    get_command = function(entry)
                    -- Preview of the content
                    return { "bat", templates_path .. entry[1] }
                end,
            }),
                attach_mappings = function(prompt_bufnr, map)
                    actions.select_default:replace(function()
                        local selection = action_state.get_selected_entry()
                        actions.close(prompt_bufnr)

                        -- Inserta la plantilla en el buffer actual
                        vim.cmd("0r " .. templates_path .. selection[1])
                        vim.notify("Templete " .. selection[1] .. " applied!")
                    end)
                    return true
                end,
            }):find()
        end

        -- Keymap general
        vim.keymap.set("n", "<leader>pc", choose_template, { desc = "Apply c++ template" })

            end,
}
