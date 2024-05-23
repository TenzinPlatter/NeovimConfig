return {
	'https://github.com/zbirenbaum/nvterm',
	config = function()
		require("nvterm").setup()

		local nvterm = require("nvterm.terminal")
		vim.keymap.set('n', '<leader>h', function() nvterm.toggle("horizontal") end)
		vim.keymap.set('n', '<leader>j', function() nvterm.toggle("vertical") end)
		vim.keymap.set('n', '<leader>k', function() nvterm.toggle("float") end)

		-- exit insert mode
		vim.keymap.set('t', '<C-space>', '<C-\\><C-n>')
	end
}
