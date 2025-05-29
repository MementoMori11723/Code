local M = {}

-- features.lua
function M.neo_tree()
  require("neo-tree").setup({
    close_if_last_window = true,
    window = {
      position = "right",
      width = 35,
    }
  })
end

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
    }
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

return M
