require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "json", "tsx", "vimdoc", "typescript", "javascript", "python", "bash", "dockerfile", "css", "html", "cpp" },
  sync_install = false,
  require'nvim-treesitter.configs'.setup {
    autotag = {
      enable = true,
    }
  },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
