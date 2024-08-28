require('gitblame').setup {
  enabled = false,
  message_template = " <summary> • <date> • <author> • <<sha>>",
  date_format = "%m-%d-%Y %H:%M:%S",
}

vim.keymap.set('n', '<leader>gb', vim.cmd.GitBlameToggle)

