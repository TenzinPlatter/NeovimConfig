return {
	"https://github.com/mfussenegger/nvim-dap",
	config = function()
		vim.keymap.set('n', '<F6>', function() require('dap').repl.open() end)
		vim.keymap.set('n', '<F7>', function() require('dap').step_over() end)
		vim.keymap.set('n', '<F8>', function() require('dap').step_into() end)
		vim.keymap.set('n', '<F9>', function() require('dap').toggle_breakpoint() end)
		vim.keymap.set('n', '<F10>', function() require('dap').continue() end)
	end
}
