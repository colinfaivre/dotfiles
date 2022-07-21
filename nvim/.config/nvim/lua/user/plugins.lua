local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    }
}

-- Install your plugins here
-- @TODO pin those plugins to specific commits
return packer.startup(function(use)
    -- My plugins here
    use { "nvim-lua/plenary.nvim" } -- Useful lua function used by a lot of plugins 
    use {
        "windwp/nvim-autopairs", 
        config = function()
            require("nvim-autopairs").setup {}
        end
    } -- Autopairs, integrates with both cmp and treesitter
    use {
       'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use({ "kyazdani42/nvim-web-devicons" })
	use({
            "kyazdani42/nvim-tree.lua",
            requires = {
               'kyazdani42/nvim-web-devicons', -- optional, for file icons
            },
            config = function()
                require("nvim-tree").setup()
            end
    })
    -- Colorshemes
    use { "gruvbox-community/gruvbox" }

    -- Completion plugins

    -- LSP
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

    -- Telescope
    use { "nvim-telescope/telescope.nvim" }

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter").setup()
        end

    }
    -- Git
    use {
        "lewis6991/gitsigns.nvim",
        config = function()
            require('gitsigns').setup()
        end
    }

    -- DAP

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end of all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)