local func = require("config.functions")
return {
  {
    "mattn/emmet-vim",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
      func.highlight()
    end,
  },
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      func.lsp_manager()
    end,
  },
  {
    "neovim/nvim-lspconfig",
    -- config = function()
    --   func.lsp_config()
    -- end,
  },
  {
    "nvimtools/none-ls.nvim",
    config = function()
      func.lsp_settings()
    end,
  },
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      func.lsp_cmp()
    end,
  },
}
