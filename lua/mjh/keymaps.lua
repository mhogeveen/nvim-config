local map = vim.keymap.set
local opts = { noremap = true, silent = true }

--Remap space as leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal Mode --
-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
map("n", "<A-Up>", ":resize +2<CR>", opts)
map("n", "<A-Down>", ":resize -2<CR>", opts)
map("n", "<A-Left>", ":vertical resize -2<CR>", opts)
map("n", "<A-Right>", ":vertical resize +2<CR>", opts)

-- Move lines up and down
map('n', '<A-j>', ':m .+1<CR>==', opts)
map('n', '<A-k>', ':m .-2<CR>==', opts)

-- Neotree
map('n', '<leader>e', ':Neotree action=focus toggle=true reveal=true<cr>', opts)

-- FZF
map('n', '<leader>;', ':Files<CR>', opts)
map('n', '<leader>:', ':GFiles<CR>', opts)

-- LSPconfig
map('n', '<space>d', vim.diagnostic.open_float, opts)
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

-- Floaterm
map('n', '<space>t', ':FloatermNew --height=0.8 --width=0.8<CR>', opts)

-- Insert Mode --
-- Move lines up and down
map('i', '<A-j>', '<Esc>:m .+1<CR>==gi', opts)
map('i', '<A-k>', '<Esc>:m .-2<CR>==gi', opts)

-- Visual Mode --
-- Move lines up and down
map('v', '<A-j>', ":m '>+1<CR>gv=gv", opts)
map('v', '<A-k>', ":m '<-2<CR>gv", opts)

-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)
