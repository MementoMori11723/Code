return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup({
        options = {
        numbers = "ordinal",
        close_command = "bdelete! %d",
        right_mouse_command = function(buf_id)
          vim.cmd('vsplit')
          vim.cmd('buffer ' .. buf_id)
        end,
        middle_mouse_command = "bdelete! %d",
        show_buffer_close_icons = true,
      }
    })
    vim.keymap.set('n',"<C-c>",
    ":BufferLineCloseOther<CR>",{
      noremap = true,
      silent = true
    })
  end
}
