local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

-- Modes
--   normal_mode       = "n",
--   insert_mode       = "i",
--   visual_mode       = "v",
--   visual_block_mode = "x",
--   term_mode         = "t",
--   command_mode      = "c",

keymap('n', '<C-i>', ":!$PWD/%<CR>", opts)
keymap('n', '<C-n>', ":!alacritty -e nvim '+Telescope find_files'<CR>n", opts)
-- tabs
keymap('n', '<C-t>', ":tabnew<CR>", opts)
keymap('n', '<C-w>', ":q<CR>", opts)
-- does not work
keymap('n', '<C-1>', ":tabn 1<CR>", opts)
keymap('n', '<C-2>', ":tabn 2<CR>", opts)
keymap('n', '<C-3>', ":tabn 3<CR>", opts)
keymap('n', '<C-4>', ":tabn 4<CR>", opts)
keymap('n', '<C-5>', ":tabn 5<CR>", opts)
keymap('n', '<C-6>', ":tabn 6<CR>", opts)
keymap('n', '<C-7>', ":tabn 7<CR>", opts)
keymap('n', '<C-8>', ":tabn 8<CR>", opts)
keymap('n', '<C-9>', ":tabn 9<CR>", opts)
keymap('n', '<C-0>', ":tabn 10<CR>", opts)
-- git
keymap('n', 'gp', ":!gp<cr>", opts)
keymap('n', 'gn', ":!gn ", opts)
keymap('n', 'gt', ":!gt ", opts)
keymap('n', 'gl', ":!gpl<cr>", opts)
keymap('n', 'gr', ":!grsh<cr>", opts)
-- selection
keymap('n', '<c-a>', "ggVG", opts)
-- save
keymap('n', '<c-s>', ":w<cr>", opts)
-- fn
keymap('n', '<f1>', ":PackerSync<cr>", opts)
keymap('n', '<f3>', ":!curl --silent ipconfig.io<cr>", opts)
keymap('n', '<f4>', ":make<cr>", opts)
-- markdown preview
keymap('n', '<mp>', ":MarkdownPreviewToggle", opts)
-- linting
keymap('n', '<c-y>', ":!pylint %<cr>", opts)

-- tabs
keymap("n", "<TAB>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", opts)

-- split
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
