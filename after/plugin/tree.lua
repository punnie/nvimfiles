require("nvim-tree").setup()

vim.keymap.set('n', '<leader>op', vim.cmd.NvimTreeToggle)
vim.keymap.set('n', '<leader>oP', vim.cmd.NvimTreeFindFile)
vim.keymap.set('n', '<leader>OP', vim.cmd.NvimTreeFindFile)
