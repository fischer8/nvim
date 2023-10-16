vim.g.mapleader = " "
vim.keymap.set("n", "<C-s>", vim.cmd.wa)
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "0", ":2ToggleTerm<CR>")
vim.keymap.set("n", "+", ":3ToggleTerm<CR>")
vim.keymap.set("n", "<leader>/", ":1ToggleTerm<CR>")
vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
vim.keymap.set("n", "<leader>h", vim.cmd.split)
vim.keymap.set("n", "<leader><leader>", vim.cmd.so)
vim.keymap.set("n", "<CR>", vim.cmd.noh, { silent = true })
vim.keymap.set("n", "<leader>q", function() vim.cmd("q!") end)
vim.keymap.set("n", "<leader>n", function() vim.lsp.buf.format() end)
vim.keymap.set("n", "<leader>s", ":Vexplore!<CR>", { silent = true })
vim.keymap.set("n", "<C-Left>", ":vertical resize +25<CR>", { silent = true })
vim.keymap.set("n", "<C-Right>", ":vertical resize -25<CR>", { silent = true })
vim.keymap.set("n", "<C-Up>", ":horizontal resize -5<CR>", { silent = true })
vim.keymap.set("n", "<C-Down>", ":horizontal resize +5<CR>", { silent = true })
vim.keymap.set("n", "n", "nzzzv", { noremap = true })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true })
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true })

function Annotations(filename)
  vim.cmd('split')
  local new_buffer = vim.api.nvim_get_current_buf()
  vim.api.nvim_buf_set_option(new_buffer, 'buftype', '')
  vim.api.nvim_buf_set_option(new_buffer, 'bufhidden', 'hide')
  vim.api.nvim_command('e ' .. filename)
end
vim.api.nvim_set_keymap('n', '<Leader>o', ":lua Annotations('~/.config/nvim/wiki.txt')<CR>", { noremap = true, silent = true })

local is_diagnostic_float_open = false
function Toggle_diagnostic_float()
  if is_diagnostic_float_open then
    vim.cmd('wincmd w')
    vim.cmd('q')
  else
    vim.diagnostic.open_float()
  end
  is_diagnostic_float_open = not is_diagnostic_float_open
end
vim.api.nvim_set_keymap('n', '?', ':lua Toggle_diagnostic_float()<CR>', { noremap = true, silent = true })
