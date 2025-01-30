return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "cmake", "cssls", "tailwindcss",
          "ast_grep", "jinja_lsp",
          "dotls", "emmet_ls",
          "gopls", "templ",
          "html", "jsonls", "lua_ls",
          "htmx", "eslint", "marksman",
          "tsp_server", "intelephense", "pyright",
          "yamlls", "zls", "rust_analyzer", "templ",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      local mason_lspconfig = require("mason-lspconfig")
      mason_lspconfig.setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({
            capabilities = capabilities,
          })
        end,
      })
      vim.keymap.set("n","K", vim.lsp.buf.hover, {})
      vim.keymap.set("n","gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n","gr", vim.lsp.buf.references, {})
      vim.keymap.set("n","Ca", vim.lsp.buf.code_action, {})
    end,
  }
}
