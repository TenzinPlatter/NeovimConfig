return {
	'https://github.com/ThePrimeagen/harpoon',
	opts = {
	},
	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		vim.keymap.set('n', '<leader>a', function() mark.add_file() end)
		vim.keymap.set('n', '<C-m>', function() ui.toggle_quick_menu() end)
		vim.keymap.set('n', '<leader>c', function() ui.nav_file(1) end)
		vim.keymap.set('n', '<leader>v', function() ui.nav_file(2) end)
		vim.keymap.set('n', '<leader>b', function() ui.nav_file(3) end)
		vim.keymap.set('n', '<leader>n', function() ui.nav_file(4) end)
	end
}
