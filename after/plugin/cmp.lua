local cmp = require("cmp")
local lspkind = require('lspkind')

cmp.setup {
  completion = { completeopt = 'menu,menuone,noinsert'},
  formatting = {
    format = lspkind.cmp_format({
    with_text = true,
    menu = {
      buffer = "[buf]",
      nvim_lsp = "[LSP]",
      nvim_lua = "[api]",
      path = "[path]",
      luasnip = "[snip]",
      gh_issues = "[issues]",
      tn = "[TabNine]",
      eruby = "[erb]",
    },
    })
  },
  experimental = {
    native_menu = false,
    ghost_text = true,
  },
}
