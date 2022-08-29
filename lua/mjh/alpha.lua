local status, alpha = pcall(require, 'alpha')
if not status then return end

local ascii = require('mjh.utils.ascii')
local dashboard = require('alpha.themes.dashboard')

dashboard.section.header.val = ascii.alien

dashboard.section.buttons.val = {
    dashboard.button( "f",  "  - Find file",     ":Telescope find_files<CR>" ),
    dashboard.button( "r",  "  - Recent",        ":Telescope oldfiles<CR>"   ),
    dashboard.button( "n",  "  - Nvim Config",   ":e ~/.config/nvim<CR>"     ),
    dashboard.button( "t",  "  - Kitty Config",  ":e ~/.config/kitty<CR>"    ),
    dashboard.button( "q",  "  - Quit",          ":qa<CR>"                   ),
}
dashboard.section.buttons.opts.spacing = 0

dashboard.section.footer.val = require('alpha.fortune')
dashboard.config.layout = {
  { type = 'padding', val = 8 },
  dashboard.section.header,
  { type = 'padding', val = 4 },
  dashboard.section.buttons,
  { type = 'padding', val = 4 },
  dashboard.section.footer
}
alpha.setup(dashboard.opts)

vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
