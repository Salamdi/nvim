return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		bigfile = { enabled = true },
		-- dashboard = { enabled = true },
		explorer = { enabled = true },
		indent = { enabled = true },
		input = { enabled = true },
		picker = { enabled = true },
		notifier = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = false },
		statuscolumn = { enabled = true },
		words = { enabled = true },
		image = {
			enabled = true,
			img_dirs = { "img", "images", "assets", "static", "public", "media", "attachments" },
			math = { enabled = true },
			latex = {
				font_size = "Large", -- see https://www.sascha-frank.com/latex-font-size.html
				-- for latex documents, the doc packages are included automatically,
				-- but you can add more packages here. Useful for markdown documents.
				packages = { "amsmath", "amssymb", "amsfonts", "amscd", "mathtools" },
				tpl = [[
        \documentclass[preview,border=2pt,varwidth,12pt]{standalone}
        \usepackage{${packages}}
        \begin{document}
        ${header}
        { \${font_size} \selectfont
          \color[HTML]{${color}}
        ${content}}
        \end{document}]],
			},
		},
		win = { enabled = true },
	},
}
