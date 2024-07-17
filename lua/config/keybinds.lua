local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

-- Modes
--   normal_mode       = "n",
--   insert_mode       = "i",
--   visual_mode       = "v",
--   visual_block_mode = "x",
--   term_mode         = "t",
--   command_mode      = "c",

keymap('n', '<C-i>', ":!$PWD/%<cr>", opts)
keymap('n', '<c-n>', ":!alacritty -e nvim '+Telescope find_files'<cr>n", opts)
-- keymap('n', '<C-u>', ":PackerUpdate<cr>", opts)
keymap('n', '<c-a>', "ggVG", opts)
keymap('n', '<c-s>', ":w<cr>", opts)

-- linting
-- keymap('n', '<c-y>', ":!pylint %<cr>", opts)
keymap('n', '<c-m>', ":!make <cr>", opts)


-- tabs
keymap('n', '<c-t>', ":tabnew<cr>", opts)
keymap('n', '<c-w>', ":q<cr>", opts)
keymap('n', '<tab>', ':BufferLineCycleNext<cr>', opts)
keymap('n', '<s-tab>', ':BufferLineCyclePrev<cr>', opts)
-- keymap('n', '<c-w>', ":BufferClose<cr>", opts)
-- keymap('n', '<tab>', ':BufferNext<CR>', opts)
-- keymap('n', '<s-tab>', ':BufferPrevious<CR>', opts)
-- keymap('n', '<c-1>', ':BufferGoto 1<CR>', opts)
-- keymap('n', '<c-2>', ':BufferGoto 2<CR>', opts)
-- keymap('n', '<c-3>', ':BufferGoto 3<CR>', opts)
-- keymap('n', '<c-4>', ':BufferGoto 4<CR>', opts)
-- keymap('n', '<c-5>', ':BufferGoto 5<CR>', opts)
-- keymap('n', '<c-6>', ':BufferGoto 6<CR>', opts)
-- keymap('n', '<c-7>', ':BufferGoto 7<CR>', opts)
-- keymap('n', '<c-8>', ':BufferGoto 8<CR>', opts)
-- keymap('n', '<c-9>', ':BufferGoto 9<CR>', opts)
-- keymap('n', '<c-0>', ':BufferLast<CR>', opts)

-- git
keymap('n', 'gp', ":!gp<cr>", opts)
keymap('n', 'gn', ":!gn ", opts)
keymap('n', 'gt', ":!gt ", opts)
keymap('n', 'gl', ":!gpl<cr>", opts)
keymap('n', 'gr', ":!grsh<cr>", opts)

-- fn
keymap('n', '<f1>', ":Lazy update<cr>", opts)
-- keymap('n', '<f1>', ":PackerSync<cr>", opts)
keymap('n', '<f2>', ":!curl --silent ipconfig.io<cr>", opts)

-- markdown preview
-- keymap('n', '<mp>', ":MarkdownPreviewToggle", opts)

-- split
keymap("n", "<c-h>", "<C-w>h", opts)
keymap("n", "<c-j>", "<C-w>j", opts)
keymap("n", "<c-k>", "<C-w>k", opts)
keymap("n", "<c-l>", "<C-w>l", opts)

-- comments.nvim
keymap("n", "<c-/>", "<Cmd>lua require('Comment.api').toggle.linewise.current()<cr>", opts)
keymap("i", "<c-/>", "<Cmd>lua require('Comment.api').toggle.linewise.current()<cr>", opts)
keymap("v", "<c-/>", "gc", opts)

-- neotree
keymap("n", "<c-o>", ":Neotree toggle<cr>", opts)

-- nvim-tree
-- keymap('n', '<C-o>', ':NvimTreeToggle<CR>', opts)
-- vim.keymap.set('n', '<C-t>', "<CMD>lua require('nvim-tree.api').tree.change_root_to_parent", opts('Up'))
-- vim.keymap.set('n', '?', "<CMD>lua require('nvim-tree.api').tree.toggle_help()", opts('Help'))

-- neovim-session-manager
keymap('n', '<c-f>', ':SessionManager load_session<cr>', opts)
keymap('n', '<c-x>', ':SessionManager save_current_session<cr>', opts)
keymap('n', '<c-q>', ':SessionManager delete_session<CR>', opts)
