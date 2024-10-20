return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {},
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  vim.keymap.set('n','<C-d>',
  "<cmd>NoiceDismiss<CR>", {
    noremap = true,
    silent = true
  }),
}
