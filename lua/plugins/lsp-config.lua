return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "gopls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		keys = {
			{ "<leader>e", vim.diagnostic.open_float, mode = "n" },
			{ "]g", vim.diagnostic.goto_next, mode = "n" },
			{ "[g", vim.diagnostic.goto_prev, mode = "n" },
			{ "<S-l>", "$", mode = "n" },
			{ "<S-h>", "^", mode = "n" },
		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.tailwindcss.setup({})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			local ok, mason_registry = pcall(require, "mason-registry")
			if not ok then
				vim.notify("mason-registry could not be loaded")
			else
				local angularls_path = mason_registry.get_package("angular-language-server"):get_install_path()
				local cmd = {
					"ngserver",
					"--stdio",
					"--tsProbeLocations",
					table.concat({
						angularls_path,
						vim.uv.cwd(),
					}, ","),
					"--ngProbeLocations",
					table.concat({
						angularls_path .. "/node_modules/@angular/language-server",
						vim.uv.cwd(),
					}, ","),
				}

				local config = {
					cmd = cmd,
					on_new_config = function(new_config)
						new_config.cmd = cmd
					end,
				}

				lspconfig.angularls.setup(config)
			end
			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
					local opts = { buffer = ev.buf }
					vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
					vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
					vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
					vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				end,
			})
		end,
	},
}
