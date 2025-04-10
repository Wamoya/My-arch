return {
--    {
--        "rebelot/kanagawa.nvim",
--        priority = 1000,
--        config = function ()
--            -- Load colorscheme
--            --vim.cmd('colorscheme kanagawa')
--            
--            -- [[ Config for transparent background ]]
--            --vim.cmd 'highlight Normal guibg=NONE ctermbg=NONE'
--
--            --vim.cmd 'highlight LineNr guibg=NONE ctermbg=NONE'
--            
--            --vim.cmd 'highlight TabLine guibg=NONE ctermbg=NONE'
--            --vim.cmd 'highlight TabLineFill guibg=NONE ctermbg=NONE'
--        end
--    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function ()
            vim.cmd('colorscheme tokyonight-night')

            -- [[ Config for transparent background ]]
            --vim.cmd 'highlight Normal guibg=NONE ctermbg=NONE'

            --vim.cmd 'highlight LineNr guibg=NONE ctermbg=NONE'
            
            --vim.cmd 'highlight TabLine guibg=NONE ctermbg=NONE'
            --vim.cmd 'highlight TabLineFill guibg=NONE ctermbg=NONE'
        end,
    }
}
