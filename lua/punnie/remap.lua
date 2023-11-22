-- Set leader as space
vim.g.mapleader = " "

-- File explorer
vim.keymap.set('n', '<leader>ff', vim.cmd.Ex)

-- Move between windows
vim.keymap.set('n', '<leader>wh', '<C-w>h')
vim.keymap.set('n', '<leader>wj', '<C-w>j')
vim.keymap.set('n', '<leader>wk', '<C-w>k')
vim.keymap.set('n', '<leader>wl', '<C-w>l')

-- Move windows
vim.keymap.set('n', '<leader>wH', '<C-w>H')
vim.keymap.set('n', '<leader>wJ', '<C-w>J')
vim.keymap.set('n', '<leader>wK', '<C-w>K')
vim.keymap.set('n', '<leader>wL', '<C-w>L')

-- Resize windows
vim.keymap.set('n', '<leader>w=', '<C-w>=')

-- Quit windows
vim.keymap.set('n', '<leader>wq', '<C-w>q')

-- Last buffer
vim.keymap.set('n', '<leader>§', '<C-^>')

-- Split windows
vim.keymap.set('n', '<leader>ws', vim.cmd.split)
vim.keymap.set('n', '<leader>wv', vim.cmd.vsplit)

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Yank lines to xclipboard
vim.keymap.set({"n", "v"}, "<leader>yy", [["+y]])
vim.keymap.set("n", "<leader>yY", [["+Y]])
