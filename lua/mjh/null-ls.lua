local status, null_ls = pcall(require, "null-ls")
if not status then
	return
end

null_ls.setup({
	sources = {
		--null_ls.builtins.code_actions.eslint_d,
		--null_ls.builtins.diagnostics.eslint_d,
		null_ls.builtins.formatting.eslint_d,
		--null_ls.builtins.diagnostics.editorconfig_checker,
    --null_ls.builtins.completion.luasnip,
		--null_ls.builtins.diagnostics.luacheck,
		null_ls.builtins.formatting.stylua,
		--null_ls.builtins.diagnostics.php,
		--null_ls.builtins.diagnostics.phpcs,
		null_ls.builtins.formatting.phpcsfixer,
		--null_ls.builtins.diagnostics.stylelint,
		null_ls.builtins.formatting.stylelint,
		--null_ls.builtins.diagnostics.tsc,
		null_ls.builtins.formatting.prettierd,
		null_ls.builtins.formatting.trim_newlines,
		null_ls.builtins.formatting.trim_whitespace,
	},
  on_attach = require("mjh.lsp.on_attach")
})
