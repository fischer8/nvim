require('telescope').setup {
  defaults = {
    file_ignore_patterns = { 'node_modules' }
  }
}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>pf', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
