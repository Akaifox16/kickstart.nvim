-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_user_command('ListLspClients', function()
  local clients = vim.lsp.get_clients()
  if next(clients) == nil then
    print 'No LSP client is attached to the buffer'
  else
    for _, client in pairs(clients) do
      print('LSP client attached: ' .. client.name)
    end
  end
end, {})

