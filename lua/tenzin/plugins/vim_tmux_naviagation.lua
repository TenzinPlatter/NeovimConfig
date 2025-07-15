return {
  "christoomey/vim-tmux-navigator",
	cmd = {
		"TmuxNavigateLeft",
		"TmuxNavigateDown",
		"TmuxNavigateUp",
		"TmuxNavigateRight",
		"TmuxNavigatePrevious",
	},
	keys = {
		{ "<C-h>",  ":TmuxNavigateLeft<cr>" },
		{ "<C-j>",  ":TmuxNavigateDown<cr>" },
		{ "<C-k>",  ":TmuxNavigateUp<cr>" },
		{ "<C-l>",  ":TmuxNavigateRight<cr>" },
		{ "<C-\\>", ":TmuxNavigatePrevious<cr>" },
	},
}

-- return {}
