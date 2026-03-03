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
		},
	},
	pickers = {
		colorscheme = {
			enable_preview = true
		}
	}
}
