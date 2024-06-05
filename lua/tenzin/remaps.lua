vim.opt.colorcolumn = "80"
vim.opt.nu = true
vim.opt.relativenumber = true
vim.o.statuscolumn = "%s %l %r "

-- when using gd (go definition), center text
vim.keymap.set('n', 'gd', 'gdzz')
vim.keymap.set('n', '<C-o>', '<C-o>zz')
vim.keymap.set('n', 'n', 'nzz')

-- clears highlight left after searching
vim.keymap.set('n', '<leader>/', function()
	vim.cmd('nohlsearch')
end)

-- make the window biger vertically
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]], {})
-- make the window smaller vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]], {})
-- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]], {})
-- make the window smaller horizontally by pressing shift and -
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]], {})

-- move in insert with OPT + h/j/k/l
vim.keymap.set('i', '<M-h>', '<left>')
vim.keymap.set('i', '<M-j>', '<down>')
vim.keymap.set('i', '<M-k>', '<up>')
vim.keymap.set('i', '<M-l>', '<right>')

-- move selection up/ down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Autosave on exit of insert if text has been changed
-- remove space below to comment out autosave while editing config
-- [[
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
pattern = { "*" },
command = "wall",
nested = true,
})
-- ]]

-- keep highlight when indenting
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

-- quit without saving using ZZ, work autosaves anyway so doesn't matter
vim.keymap.set('n', 'ZZ', ':qa!<cr>')

-- window navigation
vim.keymap.set('n', '<M-j>', '<C-W>j')
vim.keymap.set('n', '<M-k>', '<C-W>k')
vim.keymap.set('n', '<M-h>', '<C-W>h')
vim.keymap.set('n', '<M-l>', '<C-W>l')
