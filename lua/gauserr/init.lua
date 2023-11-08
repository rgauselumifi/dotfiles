vim.loader.enable()
require("gauserr.plugins")
require("gauserr.maps")
require("gauserr.options")

vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.cmd([[colorscheme gruvbox-material]])
