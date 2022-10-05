-- local nnoremap = require("marc.keymap").nnoremap
local keymap = vim.api.nvim_set_keymap

-- tabs
keymap('n', '<C-t>', ":tabnew<CR>", {})
-- git
keymap('n', 'gp', ":!gp<cr>", {})
keymap('n', 'gn', ":!gn ", {})
keymap('n', 'gt', ":!gt ", {})
keymap('n', '<c-s-insert>', "ggVG", {})
keymap('n', '<c-s>', ":w<cr>", {})
-- fn
keymap('n', '<f1>', ":PackerSync<cr>", {})
keymap('n', '<f3>', ":!curl --silent ipconfig.io<cr>", {})
