local U = require "utils"
local vim = vim
local api = vim.api
local fn = vim.fn


vim.g.coc_global_extensions = {
    "coc-go",
    "coc-json",
    "coc-lua",
    "coc-phpls",
    "coc-calc",
    "coc-css",
    "coc-docker",
    "coc-explorer",
    "coc-git",
    "coc-html",
    "coc-lua",
    "coc-json",
    "coc-lists",
    "coc-sh",
    "coc-snippets",
    "coc-syntax",
    "coc-vimlsp",
    "coc-xml",
    "coc-yaml",
    "coc-yank",
    "coc-markmap",
    "coc-graphql",
    "coc-spell-checker",
    "coc-cspell-dicts"
}


local autocmds = {
    coc_go = {}
}
U.augroups(autocmds)

-- Use tab for trigger completion with characters ahead and navigate.
-- NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
-- other plugin before putting this into your config.
-- Source: https://github.com/nanotee/nvim-lua-guide#vlua
function _G.check_back_space()
    local col = fn.col(".") - 1
    if col == 0 or fn.getline("."):sub(col, col):match("%s") then
        return true
    else
        return false
    end
end

-- Highlight the symbol and its references when holding the cursor.
vim.cmd("autocmd CursorHold * silent call CocActionAsync('highlight')")
vim.cmd("autocmd StdinReadPre * let s:std_in=1")

api.nvim_set_keymap(
    "i",
    "<TAB>",
    'pumvisible() ? "<C-N>" : v:lua.check_back_space() ? "<TAB>" : coc#refresh()',
    {expr = true}
)
api.nvim_set_keymap("i", "<S-TAB>", 'pumvisible() ? "<C-P>" : "<C-H>"', {expr = true})
-- api.nvim_set_keymap("i", "<cr>", 'pumvisible() ? coc#_select_confirm() : "<CR>"', {expr = true})
api.nvim_set_keymap("i", "<cr>", 'pumvisible() ? "<c-y>" : "<CR>"', {expr = true})


api.nvim_set_keymap("n", "<leader>ll", "<Plug>(coc-codelens-action)", {noremap = true})

-- using
api.nvim_set_keymap("n", "<leader>ca", ":CocAction<cr>", {noremap = true})
api.nvim_set_keymap("v", "<leader>ca", ":CocAction<cr>", {noremap = true})
U.map("n", "<leader>rr", "<Plug>(coc-rename)", {noremap = false})
U.map("n", "<leader>gd", "<Plug>(coc-definition)", {noremap = false})
U.map("n", "<leader>gt", "<Plug>(coc-type-definition)", {noremap = false})
U.map("n", "<leader>gi", "<Plug>(coc-implementation)", {noremap = false})
U.map("n", "<leader>gr", "<Plug>(coc-references)", {noremap = false})

api.nvim_set_keymap("n", "<leader>go", ":CocCommand git.browserOpen<cr>", {noremap = true})
-- end using

U.map("n", "<leader>qf", "<Plug>(coc-fix-current)", {noremap = false})
U.map("n", "<leader>rf", "<Plug>(coc-refactor)", {noremap = false})

api.nvim_set_keymap("n", "<leader>os", ":CocList symbols<cr>", {noremap = true})

U.map("n", "[g", "<Plug>(coc-diagnostic-prev)", {noremap = false})
U.map("n", "]g", "<Plug>(coc-diagnostic-next)", {noremap = false})

U.map("n", "<leader>Y", ":<C-u>CocList -A --normal yank<cr>", {noremap = false})

U.map("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)", {noremap = false})


-- api.nvim_set_keymap("n", "<leader>gi", ":CocCommand git.chunkInfo<cr>", {noremap = true})

-- api.nvim_set_keymap("n", "<leader>ot", ":CocCommand explorer --preset simplify --reveal<cr>", {noremap = true})

-- Use gh to show documentation in preview window.
function _G.show_docs()
    local cw = fn.expand("<cword>")
    if fn.index({"vim", "help"}, vim.bo.filetype) >= 0 then
        vim.cmd("h " .. cw)
    elseif api.nvim_eval("coc#rpc#ready()") then
        fn.CocActionAsync("doHover")
    else
        vim.cmd("!" .. vim.o.keywordprg .. " " .. cw)
    end
end

U.map("n", "K", "<CMD>lua show_docs()<CR>")

vim.cmd(
    [[
let g:coc_explorer_global_presets = {'simplify': { 'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]' }}
]]
)
