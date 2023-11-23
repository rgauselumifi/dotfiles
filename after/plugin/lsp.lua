local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }
	lsp_zero.default_keymaps({ buffer = bufnr })
	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts)
	vim.keymap.set("n", "gD", function()
		vim.lsp.buf.declaration()
	end, opts)
	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, opts)
	vim.keymap.set("n", "gi", function()
		vim.lsp.buf.implementation()
	end, opts)
	vim.keymap.set("n", "go", function()
		vim.lsp.buf.type_definition()
	end, opts)
	vim.keymap.set("n", "gr", function()
		vim.lsp.buf.rename()
	end, opts)
	vim.keymap.set("n", "gs", function()
		vim.lsp.buf.signature_help()
	end, opts)
	vim.keymap.set("n", "gR", function()
		vim.lsp.buf.references()
	end, opts)
	vim.keymap.set("n", "gl", function()
		vim.diagnostic.open_float()
	end, opts)
	vim.keymap.set("n", "]d", function()
		vim.diagnostic.goto_next()
	end, opts)
	vim.keymap.set("n", "[d", function()
		vim.diagnostic.goto_prev()
	end, opts)
	vim.keymap.set("n", "ga", function()
		vim.lsp.buf.code_action()
	end, opts)
	vim.keymap.set("n", "<leader>li", ":LspInfo<cr>")
	vim.keymap.set("n", "<leader>lr", ":LspRestart<cr>")
end)

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"emmet_language_server",
		"tsserver",
		"tailwindcss",
		"prismals",
		"lua_ls",
		"html",
		"graphql",
		"cssls",
	},
	handlers = {
		lsp_zero.default_setup,
		lua_ls = function()
			require("lspconfig").lua_ls.setup({
				settings = {
					Lua = {
						workspace = {
							checkThirdParty = false,
						},
					},
				},
			})
		end,
	},
})

local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		-- Scroll up and down in the completion documentation
		["<C-u>"] = cmp.mapping.scroll_docs(-4),
		["<C-d>"] = cmp.mapping.scroll_docs(4),
	}),
})
