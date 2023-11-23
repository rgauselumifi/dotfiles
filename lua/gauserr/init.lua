vim.loader.enable()
require("gauserr.plugins")
require("gauserr.maps")
require("gauserr.options")

vim.api.nvim_create_augroup("netrw", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = "netrw",
	pattern = "netrw",
	callback = function()
		vim.opt_local.bufhidden = "wipe"
	end,
})

-- function ColorMyPencils(color)
-- 	color = color or "photon"
-- 	vim.cmd.colorscheme(color)
--
-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end
--
-- -- ColorMyPencils()
--
vim.cmd([[colorscheme torte]])
