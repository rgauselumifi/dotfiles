local keymap = vim.keymap.set

keymap("n", "Q", "<nop>")
-- keymap("n", "<Leader>fs", "<cmd>Ex<cr>")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")
keymap("n", "J", "mzJ`z")
