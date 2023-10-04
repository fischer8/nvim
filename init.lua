require("fischer")
vim.g.netrw_banner = 0
--vim.g.netrw_browse_split = 4
vim.o.laststatus = 3
vim.g.netrw_altv = 3
--vim.g.netrw_liststyle = 3

function Annotations(filename)
  vim.cmd('split')
  local new_buffer = vim.api.nvim_get_current_buf()
  vim.api.nvim_buf_set_option(new_buffer, 'buftype', '')
  vim.api.nvim_buf_set_option(new_buffer, 'bufhidden', 'hide')
  vim.api.nvim_command('e ' .. filename)
end

vim.api.nvim_set_keymap('n', '<Leader>o', ":lua Annotations('~/.config/nvim/wiki.txt')<CR>", { noremap = true, silent = true })


