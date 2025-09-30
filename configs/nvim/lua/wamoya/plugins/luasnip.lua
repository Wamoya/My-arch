return {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
        local ls = require("luasnip")
        -- Cargar snippets de friendly-snippets
        require("luasnip.loaders.from_vscode").lazy_load()
        -- También puedes cargar tus propios snippets
        require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/.config/nvim/snippets/" })
    end,
}

