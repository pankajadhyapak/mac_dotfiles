vim.g.nvim_tree_width = 25
vim.g.nvim_tree_indent_markers = 1
require "nvim-tree".setup {
    auto_open = 1,
    auto_close = true,
    diagnostics = {
        enable = true
    },
    gitignore = 1,
    view = {
        auto_resize = true
    }
}
