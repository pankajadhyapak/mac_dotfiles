-- Install packer
local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

vim.api.nvim_exec(
    [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]],
    false
)
require("packer").startup(
    function(use)
        -- Packer can manage itself
        use "wbthomason/packer.nvim"
        use "tpope/vim-fugitive" -- Git commands in nvim
        use "tpope/vim-rhubarb" -- Fugitive-companion to interact with github
        use "honza/vim-snippets"
        use "Yggdroot/indentLine"
        use "lukas-reineke/indent-blankline.nvim"
        use "tpope/vim-abolish"
        use "lifepillar/vim-gruvbox8"
        use "tpope/vim-commentary" -- "gc" to comment visual regions/lines
        use {
            "nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate"
        }
        use {
            "hoob3rt/lualine.nvim",
            requires = {
                "kyazdani42/nvim-web-devicons",
                opt = true
            }
        }
        use {
            "akinsho/bufferline.nvim",
            requires = "kyazdani42/nvim-web-devicons"
        }
        use {
            "kyazdani42/nvim-tree.lua",
            requires = "kyazdani42/nvim-web-devicons"
        }
        use {
            "windwp/nvim-ts-autotag"
        }
        use {
            "p00f/nvim-ts-rainbow"
        }
        use {
            "windwp/nvim-autopairs"
        }
        use "mhinz/vim-startify"
        use {
            "folke/which-key.nvim"
        }
        use {
            "neoclide/coc.nvim",
            branch = "release"
        } -- coc
        use {
            "nvim-telescope/telescope.nvim",
            requires = {
                {
                    "nvim-lua/plenary.nvim"
                }
            }
        }
        use "norcalli/nvim-colorizer.lua"
        use {
            "lewis6991/gitsigns.nvim",
            requires = {
                "nvim-lua/plenary.nvim"
            }
        }
        use "akinsho/toggleterm.nvim"
        use "lukas-reineke/format.nvim"
    end
)
