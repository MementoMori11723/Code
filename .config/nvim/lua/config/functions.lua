local M = {}

function M.neo_tree()
  require("neo-tree").setup({
    window = {
      position = "right",
      width = 35,
    }
  })
end

function M.catppuccin()
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
