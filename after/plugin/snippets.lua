-- "-1read" is a native vim functionality see https://www.youtube.com/watch?v=XA2WjJbmmoM&t=2723s
vim.keymap.set("n", ",jsx",":-1read ~/.config/nvim/snippets/react-start.txt<CR>2jf(i" ,{ noremap = true})
vim.keymap.set("n", ",fn",":-1read ~/.config/nvim/snippets/function.txt<CR>f(i" ,{ noremap = true})

