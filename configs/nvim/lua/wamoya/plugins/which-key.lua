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
            { '<leader>c',  group = '[C]olorcheme'    },
            { '<leader>d',  group = '[D]iagnostic'    },
            { '<leader>e',  group = 'File [E]xplorer' },
            { '<leader>i',  group = '[I]nsert'        },
            { '<leader>o',  group = '[O]ptions'       },
            { '<leader>s',  group = '[S]earch'        },
            { '<leader>t',  group = '[T]ab'           },
            --{ '<leader>on', group = '[O]ption [N]o'   },
        }
    }
}
