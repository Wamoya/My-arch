return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "folke/lazydev.nvim",
                ft = "lua, python", -- Only load on lua and python files
                opts = {
                    library = {
                        -- See the configuration section for details
                        -- Load luvit types when the `vim.uv` word is found
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } }
                    },
                },
            },
        },
        config = function()
            -- require("lspconfig").lua_ls.setup  {}
            -- require("lspconfig").pyright.setup {}
            -- require("lspconfig").asm_lsp.setup {}

            vim.lsp.config("lua_ls", {})
            vim.lsp.config("pyright", {})
            vim.lsp.config("asm_lsp", {})
        end,
    }
}
