local status_mason, mason = pcall(require, 'mason')
if not status_mason then return end

local status_masonlsp, mason_lsp = pcall(require, 'mason-lspconfig')
if not status_masonlsp then return end

local status_lsp, lsp = pcall(require, 'lspconfig')
if not status_lsp then return end

local default_server_options = {
  on_attach = require('mjh.lsp.on_attach'),
  flags = { debounce_text_changes = 150 },
  capabilities = require('mjh.lsp.capabilities'),
}

mason.setup()
mason_lsp.setup()
mason_lsp.setup_handlers({
  -- Default server config
  function (server_name)
    lsp[server_name].setup(default_server_options)
  end,

  -- Lua config
  ['sumneko_lua'] = function()
    local lua_server_options = require('mjh.lsp.settings.lua')
    lsp['sumneko_lua'].setup(vim.tbl_deep_extend('force', lua_server_options, default_server_options))
  end
})

local signs = {
  { name = "DiagnosticSignError", text = "" },
  { name = "DiagnosticSignWarn", text = "" },
  { name = "DiagnosticSignHint", text = "" },
  { name = "DiagnosticSignInfo", text = "" },
}

for  _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

local config = {
  virtual_text = false,
  signs = {
    active = signs,
  },
  update_in_insert = true,
  underline = true,
  severity_sort = true,
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
}

vim.diagnostic.config(config)
