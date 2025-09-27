-- return {
--     {
--         "neovim/nvim-lspconfig",
--         dependencies = {
--             {
--                 "folke/lazydev.nvim",
--                 ft = "lua, python", -- Load when any of these types of files are open
--                 opts = {
--                     library = {
--                         -- See the configuration section for details
--                         -- Load luvit types when the `vim.uv` word is found
--                         { path = "${3rd}/luv/library", words = { "vim%.uv" } }
--                     },
--                 },
--             },
--         },
--         config = function()
--             vim.lsp.config("lua_ls", {})
--             vim.lsp.config("pyright", {})
--             vim.lsp.config("asm_lsp", {})
--         end,
--     }
-- }
return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "folke/lazydev.nvim",
                ft = { "lua", "python", "c", "cpp" },
                opts = {
                    library = {
                        -- See the configuration section for details
                        -- Load luvit types when the `vim.uv` word is found
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },
        config = function()
            -- Define configs
            vim.lsp.config("lua_ls", {})
            vim.lsp.config("pyright", {})
            vim.lsp.config("asm_lsp", {})
            vim.lsp.config("clangd", {})

            -- Activate servers
            vim.lsp.enable("lua_ls")
            vim.lsp.enable("pyright")
            vim.lsp.enable("asm_lsp")
            vim.lsp.enable("clangd")
        end,
    },
}
