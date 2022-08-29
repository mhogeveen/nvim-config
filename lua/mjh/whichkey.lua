local status, whichkey = pcall(require, 'which-key')
if not status then return end

whichkey.setup({
  window = {
    border = "single", -- none, single, double, shadow
  }
})

whichkey.register({
  -- Diagnostics
  ['gl'] = { 'Show line diagnostics' },
  ['gr'] = { 'Show references' },
  ['gd'] = { 'Go to definition' },
  ['gD'] = { 'Go to declaration' },

  -- Leader
  ['<leader>e'] = { 'Toggle tree explorer' },
  ['<leader>t'] = {
    name = 'Terminal',
    e = { 'Terminal - Empty' },
    l = { 'Terminal - Lazygit' }
  },
  ['<leader>f'] = {
    name = 'Telescope',
    f = { 'Find File' },
    g = { 'Git files' },
    r = { 'Live grep' },
    b = { 'Buffers' },
  },
})
