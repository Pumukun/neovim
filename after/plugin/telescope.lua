require "telescope".setup{
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			"%.env",
			"__pycache__",
			"build",
			"dist",
			"yarn.lock",
			"package-lock.json",
			"%.jpg",
			"%.png",
			"%.asset",
			"%.svg",
		},
	},
	pickers = {
		colorscheme = {
			enable_preview = true
		}
	},
	extensions = {
		aerial = {
			col1_width = 2,
			col2_width = 0,
			show_columns = "both",
		},
	},
}
