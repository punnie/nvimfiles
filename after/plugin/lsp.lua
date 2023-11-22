-- lsp.on_attach(function(client, bufnr)
--   vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, opts)
--   vim.keymap.set("n", "<leader>ck", vim.lsp.buf.hover, opts)
--   vim.keymap.set("n", "<leader>cs", vim.lsp.buf.workspace_symbol, opts)
--   vim.keymap.set("n", "<leader>cx", vim.diagnostic.open_float, opts)
--   vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
--   vim.keymap.set("n", "<leader>cr", vim.lsp.buf.references, opts)
--   vim.keymap.set("n", "<leader>cn", vim.lsp.buf.rename, opts)
--   vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
--   vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
--   vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
-- end)

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- Language servers
require('lspconfig').lua_ls.setup({})
