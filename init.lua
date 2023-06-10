-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
-- Show hover
vim.api.nvim_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true })

-- Jump to definition
vim.api.nvim_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true })

-- Open code actions using the default lsp UI
vim.api.nvim_set_keymap('n', 'ca', '<Cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true })

-- Open code actions for the selected visual range
vim.api.nvim_set_keymap('x', 'caa', '<Cmd>lua vim.lsp.buf.range_code_action()<CR>', { noremap = true })

