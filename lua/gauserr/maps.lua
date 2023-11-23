local keymap = vim.keymap.set

keymap("n", "Q", "<nop>")
keymap("i", "<C-c>", "<Esc>")
keymap("n", "<leader>p", ":Ex<cr>")
keymap("n", "<leader>f", ":find ")
keymap("n", "<leader>g", ":vim // **<Left><Left><Left><Left>")

keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")
keymap("n", "J", "mzJ`z")

keymap("n", "<leader>q", ":copen<cr>")
keymap("n", "<leader>Q", ":ccl<cr>")
keymap("n", "<leader>d", ":lua vim.diagnostic.setqflist()<cr>")

keymap("n", "[q", ":cp<cr>")
keymap("n", "]q", ":cn<cr>")
keymap("n", "[f", ":colder<cr>")
keymap("n", "]f", ":cnewer<cr>")
keymap("n", "]b", ":bnext<cr>")
keymap("n", "[b", ":bprevious<cr>")
