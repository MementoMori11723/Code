return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function ()
    require("catppuccin").setup({
      styles = {
        loops = {"italic"},
        functions = {"italic"},
        keywords = {"italic"},
        types = {"italic"},
        booleans = {"italic"},
      },
    })
    vim.cmd.colorscheme "catppuccin-macchiato"
  end
}