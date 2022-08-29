--local theme_name = 'github_config'
local theme_name = 'kanagawa'

local status, theme = pcall(require, theme_name)
if not status then return end

local github_config = {
	theme_style = "dark_default",
	transparent = false,
	function_style = "italic",
	variable_style = "italic",
}

local kanagawa_config = {
  undercurl = true,                           -- enable undercurls
  commentStyle = { italic = true },
  functionStyle = { italic = true },
  keywordStyle = { italic = false },
  statementStyle = { bold = true },
  typeStyle = {},
  variablebuiltinStyle = { italic = true},
  specialReturn = true,                       -- special highlight for the return keyword
  specialException = true,                    -- special highlight for exception handling keywords
  transparent = false,                        -- do not set background color
  dimInactive = false,                        -- dim inactive window `:h hl-NormalNC`
  globalStatus = true,                        -- adjust window separators highlight for laststatus=3
  terminalColors = true,                      -- define vim.g.terminal_color_{0,17}
  colors = {},
  overrides = {},
  theme = "default"                           -- 'default' or 'light' (experimental)
}

theme.setup(kanagawa_config)
vim.cmd("colorscheme kanagawa")
