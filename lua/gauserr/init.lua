vim.loader.enable()
require("gauserr.plugins")
require("gauserr.maps")
require("gauserr.options")

-- vim.g.netrw_banner = 0
-- vim.g.netrw_winsize = 25
vim.api.nvim_create_augroup("NetrwGroup", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = "NetrwGroup",
	pattern = "netrw",
	command = "setlocal bufhidden=wipe",
})

vim.cmd([[colorscheme gruvbox]])
