return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    branch = "master",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        require("nvim-treesitter.configs").setup({
            highlight = { enable = true },
            indent = { enable = true },
            autotag = { enable = true },
            ensure_installed = {
                "html",
                "css",
                "javascript",
                "json",
                "markdown",
                "markdown_inline",
                "bash",
                "lua",
                "python",
                "cpp",
                "haskell"
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>"
                }
            }
        })
    end
}
