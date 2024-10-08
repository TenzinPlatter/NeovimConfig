return {
	'https://github.com/nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require'nvim-treesitter.configs'.setup {
		  ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query" },

		  sync_install = false,

		  auto_install = true,

		  highlight = {
		    enable = true,

		    additional_vim_regex_highlighting = false,
		  },

			matchup = {
				enable = true,
			}
		}
	end
}
