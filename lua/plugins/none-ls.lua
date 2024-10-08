return {
	"nvimtools/none-ls.nvim",
	keys = {
		{ "<leader>gf", vim.lsp.buf.format, mode = "n" },
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
        -- null_ls.builtins.code_actions.eslint,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.stylua,
				-- null_ls.builtins.completion.spell,
			},
		})
	end,
}
