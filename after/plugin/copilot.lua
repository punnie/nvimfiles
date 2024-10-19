require("copilot").setup({
  suggestion = {
    enabled = true,
    auto_trigger = true,
  },
  panel = { enabled = false },
})

-- Disables copilot by default
vim.cmd[[Copilot disable]]

--  vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
--   expr = true,
--   replace_keycodes = false
-- })
--
-- vim.g.copilot_no_tab_map = true

