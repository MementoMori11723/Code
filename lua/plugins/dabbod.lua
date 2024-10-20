return {
  "tpope/vim-dadbod",
  opts = true,
  dependencies = {
    "kristijanhusak/vim-dadbod-ui",
    "kristijanhusak/vim-dadbod-completion",
  },
  config = function ()
    vim.keymap.set('n','<C-s>',
      ':DBUIToggle<CR>',{
        silent = true,
      })
  end
}
