local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
  return
end

toggleterm.setup({
  size = 10,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_terminals = true,
  shading_factor = 3,
  persist_size = true,
  direction = "horizontal",
  close_on_exit = true,
  shell = vim.o.shell,
  start_in_insert = true,
})

vim.keymap.set("n", "<leader>0", ":2ToggleTerm<CR>")
vim.keymap.set("n", "<leader>9", ":3ToggleTerm<CR>")
vim.keymap.set("n", "<leader>/", ":1ToggleTerm<CR>")
