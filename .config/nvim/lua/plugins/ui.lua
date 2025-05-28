local func = require("config.functions")
return {
  { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000,
    config = function()
      func.catppuccin()
    end, 
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    lazy = false,
    config = function()
      func.neo_tree()
    end,
  }
}
