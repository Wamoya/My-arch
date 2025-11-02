-- Set <space> as the leader key
vim.g.mapleader = " "

local keymap = vim.keymap



-- [[ Window management ]]
-- Manage splits
--keymap.set("n", "<leader>wv", "<C-w>v",         { desc = "Split vertically" })          -- Split vertically
--keymap.set("n", "<leader>wh", "<C-w>s",         { desc = "Split horizontally" })        -- Split horizontally
--keymap.set("n", "<leader>we", "<C-w>=",         { desc = "Reset size for all splits" }) -- Reset the size of all splits
--keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" })       -- Close split with

-- Make split navigation easier with CTRL+<hjkl>
keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, desc = "Go to left split"  }) -- Focus on left split
keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, desc = "Go to down split"  }) -- Focus on down split
keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, desc = "Go to up split"    }) -- Focus on up split
keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, desc = "Go to right split" }) -- Focus on right split

-- Manage tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>",   { desc = "[T]ab [O]pen"         }) -- Open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "[T]ab close"          }) -- Close tab with
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>",     { desc = "[T]ab [N]ext"         }) -- Go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>",     { desc = "[T]ab [P]revious"     }) -- Go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "[T]ab current [F]ile" }) -- Open current file on a new tab



-- [[ Options ]]
-- Toggle
keymap.set("n", "<leader>ow", "<cmd>set wrap!<CR>", { desc = "[O]ption [W]rap" }) -- Toggle wrap
--keymap.set("n", "<leader>oh", "<cmd>nohlsearch<CR>", { desc = "[O]ption Remove [H]ighlights on search" }) -- Clear highlights on search
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Remove highlights on search" }) -- Clear highlights on search



-- [[ Colorscheme ]]
keymap.set("n", "<leader>c1", "<cmd>colorscheme tokyonight-night<CR>", { desc = "tokyonight-night" })
keymap.set("n", "<leader>c2", "<cmd>colorscheme tokyonight-day<CR>",   { desc = "tokyonight-day"   })
keymap.set("n", "<leader>c3", "<cmd>colorscheme desert<CR>",           { desc = "desert"           })
keymap.set("n", "<leader>c4", "<cmd>colorscheme evening<CR>",          { desc = "evening"          })
keymap.set("n", "<leader>c5", "<cmd>colorscheme slate<CR>",            { desc = "slate"            })
keymap.set("n", "<leader>c6", "<cmd>colorscheme sorbet<CR>",           { desc = "sorbet"           })


-- [[ Terminal ]] See plugins/toggleterm.lua
-- Manage terminals
keymap.set("n", "<leader>ñf", "<cmd>:ToggleTerm direction=float name=TerminalF<CR>",              { desc = "Terminal [F]loat" })
keymap.set("n", "<leader>ñh", "<cmd>:ToggleTerm direction=horizontal name=TerminalH<CR>",         { desc = "Terminal [H]orizontal" })
keymap.set("n", "<leader>ñv", "<cmd>:ToggleTerm direction=vertical name=TerminalV size=70<CR>",   { desc = "Terminal [V]ertical" })
keymap.set("n", "<leader>ñt", "<cmd>:ToggleTerm direction=tab name=TerminalT<CR>",   { desc = "Terminal [V]ertical" })
--keymap.set("n", "<leader>g", "<cmd>:TermExec dir=. direction=float name=Git cmd=lazygit<CR>", { desc = "Open lazygit in a floating terminal" })

-- Move between terminals same way as between splits
-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
function _G.set_terminal_keymaps()
    local opts = {buffer = 0}
    keymap.set('t', '<esc>', [[<C-\><C-n>]],        opts)
    --keymap.set('t', 'jk',    [[<C-\><C-n>]],        opts)
    keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]],   opts)
end

-- [[ Diagnostics ]] See vim.diagnostics
keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "[D]iganostic [L]ist" })
keymap.set("n", "<leader>ds", vim.diagnostic.open_float, { desc = "[D]iganostic [S]how" })




-- [[ TODO comments ]]
--keymap.set("n", "


-- [[ Insert keymaps ]]
--keymap.set("i", "(", "()<left>", { noremap = true, desc = "Close parenthesis automatically" })
--keymap.set("i", "{", "{}<left>", { noremap = true, desc = "Close brackets automatically" })
--keymap.set("i", "[", "[]<left>", { noremap = true, desc = "Close square brackets automatically" })
keymap.set("n", "<leader>is", "i¯\\_(ツ)_/¯<Esc>", { noremap = true, desc = "[I]nsert [S]hrug" })
keymap.set("i", "<C-b>", "****<left><left>",       { noremap = true, desc = "Write text in bold." })
--keymap.set("i", "<C-i>", "**<left>",               { noremap = true, desc = "Write text in itallic." })
