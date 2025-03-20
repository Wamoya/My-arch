return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 500
    end,
    opts = {
        spec = { -- Document existing chains
            --{ '<leader>s', group = '[S]plit'         },
            { '<leader>t',  group = '[T]ab'           },
            { '<leader>e',  group = 'File [E]xplorer' },
            { '<leader>o',  group = '[O]ptions'       },
            --{ '<leader>on', group = '[O]ption [N]o'   },
            { '<leader>s',  group = '[S]earch'        },
            { '<leader>c',  group = '[C]olorcheme'    },
        }
    }
}
