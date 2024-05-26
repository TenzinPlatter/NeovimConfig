function Aesthetics()
	vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#51B3EC', bold=true })
	vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true })
	vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#FB508F', bold=true })

	-- transparent background
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	-- set highlight colours
	vim.cmd('hi Visual  guifg=Black guibg=LightBlue gui=none')
	vim.cmd('hi MatchParen guibg=#82aaff')
	vim.cmd('hi Search guibg=#FEFFA7')


	-- set no code wrap
	vim.cmd('set nowrap')
end

return {
	{
		'https://github.com/JoosepAlviste/palenightfall.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			require('palenightfall').setup({})
			Aesthetics()
		end
	}

}

