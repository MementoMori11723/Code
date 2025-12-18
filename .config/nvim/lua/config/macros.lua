-- File lookup
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-r>", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<C-l>", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<C-p>", function()
	builtin.find_files({
		hidden = true,
	})
end, { desc = "Telescope find files" })

-- Auto save
vim.api.nvim_create_augroup("LspFormatOnSave", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
	group = "LspFormatOnSave",
	pattern = "*",
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})

-- Code info
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "Ca", vim.lsp.buf.code_action, {})

-- Dismiss notifications
vim.keymap.set("n", "<C-d>", "<cmd>NoiceDismiss<CR>", {
	noremap = true,
	silent = true,
})

-- Toggle file tree
vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", {
	noremap = true,
	silent = true,
})

-- Close buffers
vim.keymap.set("n", "<C-c>", ":BufferLineCloseOther<CR>", {
	noremap = true,
	silent = true,
})

-- Toggle terminal
vim.keymap.set("n", "<C-t>", '<cmd>lua require("toggleterm").toggle()<CR>', {
	noremap = true,
	silent = true,
})
