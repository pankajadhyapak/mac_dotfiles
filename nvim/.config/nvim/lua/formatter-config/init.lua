require "format".setup {
    html = {{cmd = {"prettier -w"}}},
    css = {{cmd = {"prettier -w"}}},
    json = {{cmd = {"prettier -w"}}},
    yaml = {{cmd = {"prettier -w"}}},
    lua = {
        {
            cmd = {
                function(file)
                    return string.format("luafmt -w replace %s", file)
                end
            }
        }
    },
    go = {
        {
            cmd = {"gofumpt -w", "golines --base-formatter='goimports' -w -m 120"},
            tempfile_postfix = ".tmp"
        }
    },
    php = {
        {
            cmd = {
                function(file)
                    return string.format("php-cs-fixer fix --config .php_cs %s", file)
                end
            },
            tempfile_postfix = ".tmp"
        }
    }
}

vim.cmd("autocmd BufWritePost * FormatWrite")
