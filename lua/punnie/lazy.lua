local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  {
    "nvim-orgmode/orgmode",
    dependencies = { "nvim-treesitter/nvim-treesitter", lazy = true },
    event = "VeryLazy"
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "kyazdani42/nvim-web-devicons", opt = true }
  },

  {
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  { "Mofiqul/dracula.nvim" },

  { "projekt0n/github-nvim-theme" },

  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "nvim-telescope/telescope.nvim", -- optional
      "sindrets/diffview.nvim",        -- optional
      "ibhagwan/fzf-lua",              -- optional
    }
  },

  { "mbbill/undotree" },

  { "lewis6991/gitsigns.nvim" },

  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- optional, for file icons
    }
  },

  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/nvim-cmp",
      "L3MON4D3/LuaSnip",
    }
  },

  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy"
  },

  {
    "numToStr/Comment.nvim",
    lazy = false,
  },

  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require "nordic" .load()
    end
  },

  {
    "Olical/conjure",
    ft = { "clojure", "fennel", "python" }, -- etc
    -- [Optional] cmp-conjure for cmp
    dependencies = {
      {
        "PaterJason/cmp-conjure",
        config = function()
          local cmp = require("cmp")
          local config = cmp.get_config()
          table.insert(config.sources, {
            name = "buffer",
            option = {
              sources = {
                { name = "conjure" },
              },
            },
          })
          cmp.setup(config)
        end,
      },
    },
    config = function(_, opts)
      require("conjure.main").main()
      require("conjure.mapping")["on-filetype"]()
    end,
    init = function()
      -- Set configuration options here
      -- vim.g["conjure#debug"] = true
    end,
  }
})
