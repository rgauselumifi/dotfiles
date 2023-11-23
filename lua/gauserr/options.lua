local set = vim.opt

set.path:append("**")
set.wildignore = "**/node_modules/**, **lazy-lock.json"
set.clipboard:append("unnamedplus")
set.wildmenu = true
set.backup = false
set.fileencoding = "utf-8"
set.undofile = true
set.swapfile = false
set.updatetime = 50
set.modifiable = true

set.nu = true
set.relativenumber = true
set.guicursor = ""
set.mouse = "" --enable selecting text with mouse for copy/paste

set.autoindent = true
set.smartindent = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.wrap = false
set.scrolloff = 8
set.hidden = true
-- set.statusline = "%f [%{FugitiveHead()}]"
