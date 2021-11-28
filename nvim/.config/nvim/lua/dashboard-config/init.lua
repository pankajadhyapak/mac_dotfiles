-- vim.g.dashboard_default_executive = 'telescope'
-- vim.g.dashboard_custom_header = [
--     [[
-- ______           _         _
-- | ___ \         | |       (_)
-- | |_/ /_ _ _ __ | | ____ _ _
-- |  __/ _` | '_ \| |/ / _` | |
-- | | | (_| | | | |   < (_| | |
-- \_|  \__,_|_| |_|_|\_\__,_| |
--                          _/ |
--                         |__/
-- ]]
-- ]

vim.g.startify_lists = {
    {type = "bookmarks", header = {"   Bookmarks"}},
    {type = "files", header = {"   Files"}}
}

vim.g.startify_bookmarks = {
    "/Users/pankaj/Documents/code/frontend-symfony/cloud-run",
    "/Users/pankaj/Documents/code/frontend-symfony",
    "/Users/pankaj/Documents/sites",
    {c = "~/.config"},
    {i = "~/.config/nvim"}
}
