return {
	{
		"https://github.com/zaldih/themery.nvim",
		config = function ()
			vim.keymap.set('n', '<leader>tp', ':Themery<CR>')

			require("themery").setup({
				themes = {
					"gruvbox",
					"palenight",
					"tokyonight",
					"catppuccin",
					"cyberdream",
					"no-clown-fiesta",
					"rose-pine",
				}
			})
		end
	},
	{
		"https://github.com/rose-pine/neovim",
		name = "rose-pine",
		config = function ()
			require("rose-pine").setup({
				variant = "moon",
			})
		end
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		opts = {
			transparent_mode = true
		}
	},
	{
		"https://github.com/aktersnurra/no-clown-fiesta.nvim",
		config = function ()
			require("no-clown-fiesta").setup({
				transparent = true,
			})
		end
	},
	{
		'https://github.com/wilmanbarrios/palenight.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			require("palenight").set()
		end
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	{
		"https://github.com/folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				style = "storm",
				transparent = true,
				styles = {
					functions = { italic = true }
				}
			})
		end
	},
	{
			"scottmckendry/cyberdream.nvim",
			lazy = false,
			priority = 1000,
			config = function()
				require("cyberdream").setup({
					transparent = true,
				})
			end
	}
}
