return {
	'https://github.com/nvim-telescope/telescope-file-browser.nvim',
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
		'https://github.com/sharkdp/fd'
	},
	config = function()
		require('telescope').setup({
			extensions= {
				file_browser = {
					theme = 'ivy',
					-- hijack_netrw = true,
					grouped = true,
					files = true,
				}
			}
		})

		require('telescope').load_extension('file_browser')
		vim.keymap.set('n', '<space>pv', function()
			require('telescope').extensions.file_browser.file_browser()
			local escKey = vim.api.nvim_replace_termcodes('<esc>', true, false, true)
			vim.api.nvim_feedkeys(escKey, 'm', true)
		end)
	end
}
