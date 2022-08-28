local status, whichkey = pcall(require, 'which-key')
if not status then return end

whichkey.setup({
  window = {
    border = "single", -- none, single, double, shadow
  }
})

whichkey.register({
  ['gl'] = { 'Show line diagnostics' },
  ['gr'] = { 'Show references' },
  ['gd'] = { 'Go to definition' },
  ['gD'] = { 'Go to declaration' },
  ['<leader>e'] = { 'Toggle tree explorer' },
  ['<leader>t'] = { 'Toggle terminal' },
})
