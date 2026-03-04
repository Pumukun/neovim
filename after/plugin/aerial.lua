require("aerial").setup({
	on_attach = function(bufnr)
		vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
		vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
	end,

	layout = {
		max_width = { 40, 0.2 },
		width = nil,
		min_width = 10,

		win_opts = {},

		default_direction = "prefer_right",

		placement = "window",

		resize_to_content = true,

		preserve_equality = false,
	},
})
vim.keymap.set("n", "<leader>fl", "<cmd>Telescope aerial<CR>")
