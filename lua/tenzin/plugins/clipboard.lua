return {
	'https://github.com/ojroques/nvim-osc52',
	config = function ()
		vim.keymap.set('n', '<leader>c', require('osc52').copy_operator, {expr = true})
		vim.keymap.set('n', '<leader>cc', '<leader>c_', {remap = true})
		vim.keymap.set('x', '<leader>c', require('osc52').copy_visual)

		require("osc52").setup({
			tmux_passthrough = true,
		})
	end
}
