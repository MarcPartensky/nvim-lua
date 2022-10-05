-- local nnoremap = require("marc.keymap").nnoremap
local keymap = vim.api.nvim_set_keymap

keymap('n', '<C-t>', ":tabnew<CR>", {})
keymap('n', 'gp', ":!gp<CR>", {})
keymap('n', 'gn', ":!gn ", {})
keymap('n', 'gt', ":!gt ", {})
keymap('n', '<F3>', ":!curl --silent ipconfig.io<CR>", {})
keymap('n', '<F1>', ":PackerSync", {})
