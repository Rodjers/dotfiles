vim.pack.add({"https://github.com/williamboman/mason.nvim"})
vim.pack.add({"https://github.com/mason-org/mason-lspconfig.nvim"})
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "jdtls", "ruff", "clangd", "lua_ls" },
})

vim.lsp.enable({ "jdtls", "ruff", "clangd", "lua_ls" })
