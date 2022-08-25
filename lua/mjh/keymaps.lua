local map = vim.keymap.set
local opts = { noremap = true, silent = true }

--Remap space as leader key
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Move lines up and down
map('n', '<C-j>', ':m .+1<CR>==', opts)
map('n', '<C-k>', ':m .-2<CR>==', opts)
map('i', '<C-j>', '<Esc>:m .+1<CR>==gi', opts)
map('i', '<C-k>', '<Esc>:m .-2<CR>==gi', opts)
map('v', '<C-j>', ":m '>+1<CR>gv=gv", opts)
map('v', '<C-k>', ":m '<-2<CR>gv", opts)

-- Neotree
map('n', '<leader>\'', ':Neotree action=focus toggle=true reveal=true<cr>')

-- FZF
map('n', '<leader>;', ':Files<CR>')
map('n', '<leader>:', ':GFiles<CR>')

-- LSPconfig
map('n', '<space>e', vim.diagnostic.open_float, opts)
map('n', '[d', vim.diagnostic.goto_prev, opts)
map('n', ']d', vim.diagnostic.goto_next, opts)
map('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Barbar
map('n', '<space>,', ':BufferPrevious<CR>', opts)
map('n', '<space>.', ':BufferNext<CR>', opts)
map('n', '<space>c', ':BufferClose<CR>', opts)
map('n', '<space>p', ':BufferPick<CR>', opts)
map('n', '<space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<space>bl', ':BufferOrderByLanguage<CR>', opts)
map('n', '<space>bw', ':BufferOrderByWindowNumber<CR>', opts)

-- Hop
map('n', '<space>h', ':HopWord<CR>', opts)
map('n', '<space>H', ':HopLineStart<CR>', opts)
