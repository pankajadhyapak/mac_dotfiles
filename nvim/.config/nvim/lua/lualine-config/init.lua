local function relfilename()
    return vim.fn.expand("%:f")
end

require("lualine").setup {
    options = {
        theme = "gruvbox",
        section_separators = "",
        component_separators = ""
    },
    sections = {
        lualine_a = {"mode"},
        lualine_b = {"branch"},
        lualine_c = {{"filename", full_name = true, path = 1}, {"diagnostics", sources = {"nvim_lsp"}}},
        lualine_x = {"encoding", "fileformat", "filetype"},
        lualine_y = {"progress"},
        lualine_z = {"location"}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {{"filename", full_name = true, path = 1}},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    },
    extensions = {"fzf"}
}
