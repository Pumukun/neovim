require('toggleterm').setup({
	shell = (jit.os == "Windows") and "pwsh" or vim.o.shell,
	size = 35
})
