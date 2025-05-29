local M = {}

-- lsp.lua
function M.highlight()
  require("nvim-treesitter.configs").setup({
    ensure_installed = {
      "c", "lua",
      "vim", "vimdoc",
      "query", "markdown",
      "markdown_inline", "bash",
      "rust", "javascript",
      "html", "css",
      "typescript", "go",
      "json", "yaml", "python",
      "jinja", "php", "sql", "svelte",
      "templ", "tsx", "toml",
      "zig", "scss", "nginx", "make",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    }
  })
end

function M.lsp_manager()
  local capabilities = require("cmp_nvim_lsp").default_capabilities()
  local mason_lspconfig = require("mason-lspconfig")
  local servers = {
    "clangd", "cmake",
    "cssls", "tailwindcss",
    "ast_grep", "jinja_lsp",
    "dotls", "emmet_ls",
    "gopls", "templ",
    "html", "jsonls", "lua_ls",
    "htmx", "eslint", "marksman",
    "tsp_server", "intelephense", "pyright",
    "yamlls", "zls", "rust_analyzer",
  }
  mason_lspconfig.setup({
    ensure_installed = servers,
  })
  for _, server in ipairs(servers) do
    vim.lsp.config(server, vim.tbl_deep_extend("force", {
      capabilities = capabilities
    }, {}))
    vim.lsp.enable(server)
  end
end

function M.lsp_settings()
  local null_ls = require("null-ls")
  null_ls.setup({
    sources = {
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.black,
      null_ls.builtins.formatting.isort,
      null_ls.builtins.formatting.gofumpt,
      null_ls.builtins.formatting.phpcbf,
    }
  })
end

function M.lsp_cmp()
  local cmp = require("cmp")
  require("luasnip.loaders.from_vscode").lazy_load()
  cmp.setup({
    snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-h>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.abort(),
      ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "luasnip" },
    }, {
      { name = "buffer" },
    }),
  })
end

-- ui.lua
function M.theme()
  require("catppuccin").setup({
    flavour = "macchiato",
    transparent_background = true,
    show_end_of_buffer = true,
    styles = {
      comments = { "italic" },
      conditionals = { "italic" },
      keywords = { "italic" },
      strings = { "italic", "underline" },
      numbers = { "bold" },
      booleans = { "bold" },
      operators = { "italic" },
    },
  })
  vim.cmd.colorscheme "catppuccin"
end

function M.neo_tree()
  require("neo-tree").setup({
    close_if_last_window = true,
    popup_border_style = "rounded",
    window = {
      position = "right",
      width = 35,
    }
  })

  local events = require("neo-tree.events")
  events.fire_event(events.GIT_EVENT)
end

function M.indent()
  require("ibl").setup()
end

return M
