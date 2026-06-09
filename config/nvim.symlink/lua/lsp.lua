vim.pack.add({'https://github.com/williamboman/mason.nvim'})
vim.pack.add({'https://github.com/mason-org/mason-lspconfig.nvim'})
vim.pack.add({'https://github.com/neovim/nvim-lspconfig'})

local lsps = { 
  'jdtls', 
  'ruff', 
  'clangd', 
  'lua_ls', 
  'vimls' 
}

require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = lsps,
})

vim.lsp.enable(lsps)
