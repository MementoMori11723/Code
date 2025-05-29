local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })

vim.keymap.set("n", "<C-f>", vim.lsp.buf.format, {})
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "Ca", vim.lsp.buf.code_action, {})

vim.keymap.set("n", "<C-d>", "<cmd>NoiceDismiss<CR>", {
  noremap = true,
  silent = true,
})
vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", {
  noremap = true,
  silent = true,
})
