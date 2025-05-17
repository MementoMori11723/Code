require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "jinja_lsp",
  "cmake",
  "tailwindcss",
  "ast_grep",
  "jinja_lsp",
  "dotls",
  "emmet_ls",
  "gopls",
  "templ",
  "jsonls",
  "lua_ls",
  "htmx",
  "eslint",
  "marksman",
  "tsp_server",
  "intelephense",
  "pyright",
  "yamlls",
  "zls",
  "rust_analyzer",
  "templ",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
