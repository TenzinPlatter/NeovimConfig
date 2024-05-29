return {
  "epwalsh/obsidian.nvim",
  version = "*",    ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
		workspaces = {
			{
				name = "Notes",
				path = "~/obsidian/notes"
			}
		}
	},
}
