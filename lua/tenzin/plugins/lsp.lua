return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim"
		},
		opts = {
			inlay_hints = { enabled = true },
		},
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗"
					}
				}
			})
			require("mason-lspconfig").setup({
				ensure_installed = {
					"typos_lsp",
					"clangd",
					"jsonls",
					"jdtls",
					"tsserver",
					"ltex",
					"lua_ls",
					"autotools_ls",
					"markdown_oxide",
					"jedi_language_server",
					"r_language_server"
				}

			})

			local my_capabilities = require('cmp_nvim_lsp').default_capabilities()

			local my_on_attach = function(client, bufnr)
				-- supposed to set up inlay hints, doesn't work :(
				if client.server_capabilities.inlayHintProvider then
					vim.lsp.inlay_hint.enable(true, { bufnr = 0 })
				end

				vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
				vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)

				vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
				vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
				vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references)
				vim.keymap.set('n', 'K', vim.lsp.buf.hover)
			end

			local lspconfig = require("lspconfig")
			require("mason-lspconfig").setup_handlers({
				function (server_name)
					lspconfig[server_name].setup({
						on_attach = my_on_attach,
						capabilities = my_capabilities
					})
				end,

				require("lspconfig").ltex.setup({
					on_attach = my_on_attach,
					capabilities = my_capabilities,
					settings = {
						ltex = {
							language = "en-GB"
						}
					}
				}),

				require("lspconfig").lua_ls.setup({
					on_attach = my_on_attach,
					capabilities = my_capabilities,
					settings = {
						Lua = {
							diagnostics = {
								globals = {
									"vim",
								}
							}
						}
					}
				}),
			})
		end
	}
}
