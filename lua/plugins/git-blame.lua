return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				on_attach = function(bufnr)
					local gs = package.loaded.gitsigns
					local function map(mode, l, r, opts)
						opts = opts or {}
						opts.buffer = bufnr
						vim.keymap.set(mode, l, r, opts)
					end
					map("n", "<leader>hh", gs.next_hunk)
					map("n", "<leader>hH", gs.prev_hunk)
					map("n", "<leader>hp", gs.preview_hunk)
          map("n", "<leader>tb", gs.toggle_current_line_blame)
				end,
			})
		end,
	},
	--[[ {
		"f-person/git-blame.nvim",
		keys = {
			{ "<leader>gb", ":GitBlameToggle<CR>", mode = "n" },
		},
		config = function()
			require("gitblame").setup({
				enabled = false,
			})
		end,
	}, ]]
}
