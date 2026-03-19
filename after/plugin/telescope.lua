require "telescope".setup{
	defaults = {
		layout_strategy = "vertical",
		layout_config = {
			width = 0.9,
			height = 0.95,
			preview_height = 0.6,
			mirror = true
		},
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
		path_display = { "smart" }
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
