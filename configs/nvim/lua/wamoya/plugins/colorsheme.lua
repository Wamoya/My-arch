return {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function ()
        -- Load colorscheme
        vim.cmd('colorscheme kanagawa')
        
        -- [[ Transparent ]]
        --vim.cmd 'highlight Normal guibg=NONE ctermbg=NONE'

        --vim.cmd 'highlight LineNr guibg=NONE ctermbg=NONE'
        
        --vim.cmd 'highlight TabLine guibg=NONE ctermbg=NONE'
        --vim.cmd 'highlight TabLineFill guibg=NONE ctermbg=NONE'
    end
}
