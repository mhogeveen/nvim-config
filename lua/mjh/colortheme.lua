local status, github_theme = pcall(require, 'github-theme')
if not status then return end

github_theme.setup({
	theme_style = "dark_default",
	transparent = false,
	function_style = "italic",
	variable_style = "italic",
})
