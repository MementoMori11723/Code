return {
  'akinsho/toggleterm.nvim', 
  version = "*", 
  config = function()
    vim.keymap.set('n','<C-t>',
    '<cmd>lua require("toggleterm").toggle()<CR>',{
      noremap = true, 
      silent = true
    })
    require('toggleterm').setup()
  end,
}
