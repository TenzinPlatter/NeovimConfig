return {
	'https://github.com/nvim-tree/nvim-tree.lua',
	config = function()
		local function onAttach(bufnr)
			local function opts(desc)
				return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end
			local api = require('nvim-tree.api')
			api.config.mappings.default_on_attach(bufnr)
			vim.keymap.set('n', "<C-n>", function()
				print("hello")
				api.tree.toggle()
			end)
		end

		require('nvim-tree').setup({
			on_attach = onAttach,
			git = {
				enable = false,
			}
		})
	end
}
