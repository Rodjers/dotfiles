vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    -- Ensure the client supports completion before enabling it
    if client and client.supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id)
    end
  end,
})

vim.o.autocomplete = true
vim.o.pumheight = 20
vim.o.pumborder = 'rounded'
vim.opt.complete:append('o')
vim.opt.completeopt = { 'menuone', 'noselect' }
