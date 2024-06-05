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

			local on_attach = function(client, bufnr)
				-- supposed to set up inlay hints, doesn't work :(
				if client.server_capabilities.inlayHintProvider then
					vim.lsp.inlay_hint.enable(true, { bufnr = 0 })
				end

				vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
				vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)

				vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
				vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
				vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references)
				vim.keymap.set('n', 'H', vim.lsp.buf.hover)
			end

			local capabilities = require('cmp_nvim_lsp').default_capabilities()

			require("lspconfig").typos_lsp.setup({
				on_attach = on_attach,
				capabilities = capabilities

			})

			require("lspconfig").clangd.setup({
				on_attach = on_attach,
				capabilities = capabilities

			})

			require("lspconfig").jsonls.setup({
				on_attach = on_attach,
				capabilities = capabilities

			})

			require("lspconfig").jdtls.setup({
				on_attach = on_attach,
				capabilities = capabilities

			})

			require("lspconfig").tsserver.setup({
				on_attach = on_attach,
				capabilities = capabilities

			})

			require("lspconfig").ltex.setup({
				on_attach = on_attach,
				capabilities = capabilities

			})

			require("lspconfig").lua_ls.setup({
				on_attach = on_attach,
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = {
								"vim",
							}
						}
					}
				}

			})

			require("lspconfig").autotools_ls.setup({
				on_attach = on_attach,
				capabilities = capabilities

			})

			require("lspconfig").markdown_oxide.setup({
				on_attach = on_attach,
				capabilities = capabilities

			})

			require("lspconfig").jedi_language_server.setup({
				on_attach = on_attach,
				capabilities = capabilities

			})

			require("lspconfig").r_language_server.setup({
				on_attach = on_attach,
				capabilities = capabilities

			})


		end
	}
}
