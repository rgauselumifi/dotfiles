local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }
  lsp_zero.default_keymaps({ buffer = bufnr })
  vim.keymap.set("n", "<leader>la", function()
    vim.lsp.buf.code_action()
  end, opts)
  vim.keymap.set("n", "<leader>lR", function()
    vim.lsp.buf.references()
  end, opts)
  vim.keymap.set("n", "<leader>lr", function()
    vim.lsp.buf.rename()
  end, opts)
  vim.keymap.set("n", "<leader>li", ":LspInfo<cr>")
end)

require("mason").setup({})
require("mason-lspconfig").setup({
  ensure_installed = { "tsserver", "tailwindcss", "prismals", "lua_ls", "html", "graphql", "cssls" },
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
