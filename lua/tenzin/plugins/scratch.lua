return {
	"https://github.com/FraserLee/ScratchPad",
	config = function ()
		vim.g.scratchpad_autostart = 0
		vim.g.scratchpad_autofocus = 1
		vim.keymap.set("n", "<leader>p", function() vim.cmd("ScratchPad") end)
		vim.api.nvim_set_hl(0, 'ScratchPad', { ctermfg="white" })
	end,
}
