return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function ()
    require("catppuccin").setup({
      transparent_background = true,
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
