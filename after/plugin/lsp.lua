require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "eslint", "clangd", "lua_ls", "tsserver", "prismals", "pyright", "tailwindcss", "html", "bashls", "sqlls", "jsonls", "cssmodules_ls", "dockerls",
    "docker_compose_language_service" }
})

vim.keymap.set("n", "<leader>ch", function() vim.lsp.buf.hover() end, {})
vim.keymap.set("n", "<leader>n", function() vim.lsp.buf.format() end)

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({ buffer = bufnr })
end)

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.set_preferences({
  sign_icons = {
    error = '✘',
    warn = '▲',
    hint = '»',
    info = '»'
  }
})


lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({ select = false }),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }
})
local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.eslint,
    null_ls.builtins.diagnostics.eslint,
  },
})

