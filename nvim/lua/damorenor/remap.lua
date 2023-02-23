vim.g.mapleader = " "

-- navigation handling
vim.keymap.set("n","<C-d>", "<C-d>zz")
vim.keymap.set("n","<C-u>", "<C-u>zz")
vim.keymap.set("n","n", "nzzzv")
vim.keymap.set("n","N", "Nzzzv")

-- tree 
vim.keymap.set("n","<leader>yy", ":%y+<CR>")
