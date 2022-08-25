require('mason').setup()
require('mason-lspconfig').setup()
require('mason-lspconfig').setup_handlers({
  -- Default server config
  function (server_name)
    require('lspconfig')[server_name].setup({
      on_attach = require('mjh.lsp.on_attach'),
      flags = { debounce_text_changes = 150 },
    })
  end,

  -- Lua config
  ['sumneko_lua'] = function()
    require('lspconfig')['sumneko_lua'].setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    })
  end
})
