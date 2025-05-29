local func = require("config.functions")
return {
  {
    "nvim-treesitter/nvim-treesitter", 
    branch = 'master', 
    lazy = false, 
    build = ":TSUpdate",
    config = function()
      func.highlight()
    end,
  }
}
