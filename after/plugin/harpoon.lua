local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<Leader>fa", ':lua require("harpoon.mark").add_file()<cr>')
vim.keymap.set("n", "<Leader>fm", ':lua require("harpoon.ui").toggle_quick_menu()<cr>')
vim.keymap.set("n", "<Leader>fj", ':lua require("harpoon.ui").nav_file(1)<cr>')
vim.keymap.set("n", "<Leader>fk", ':lua require("harpoon.ui").nav_file(2)<cr>')
vim.keymap.set("n", "<Leader>fl", ':lua require("harpoon.ui").nav_file(3)<cr>')
vim.keymap.set("n", "<Leader>f;", ':lua require("harpoon.ui").nav_file(4)<cr>')
