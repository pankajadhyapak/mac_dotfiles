--Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.api.nvim_set_keymap
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})

map('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})



-- -- COC

-- -- symbol renaming
-- map("n", "-n", "<Plug>(coc-rename)", { silent = true })
-- -- apply AutoFix to problem on current line
-- map("n", "-f", "<Plug>(coc-fix-current)", { silent = true })
-- -- open action dialog
-- map("n", "<space>ca", ":CocAction<CR>", { silent = true })
-- map("v", "<space>ca", ":CocAction<CR>", { silent = true })

-- -- GoTo code navigation.
-- map("n", "gd", "<Plug>(coc-definition)", { silent = true })
-- map("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
-- map("n", "gi", "<Plug>(coc-implementation)", { silent = true })
-- map("n", "gr", "<Plug>(coc-references)", { silent = true })

-- -- Use K to show documentation in preview window.
-- map("n", "K", ":call CocActionAsync(\'doHover\')<CR>", { silent = true })

-- -- use space o to show symbols
-- map("n", "<space>o", ":CocList -I symbols<CR>", { silent = true })

-- -- format code
-- map("n", "-r", ":call CocActionAsync(\'format\')<CR>", { silent = true })

-- -- Use <c-space> to trigger completion.
-- map("i", "<c-space>", "coc#refresh()", { silent = true, expr = true })

-- -- Use -d to jump to next diagnostic
-- map("n", "-d", "<Plug>(coc-diagnostic-next)", { silent = true })

-- -- Use -o to show outline
-- map("n", "-o", ":CocList outline<CR>", { silent = true })
