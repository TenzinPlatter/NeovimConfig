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
		},
		templates = {
			folder = "templates",
			date_format = "%a-%d-%m-%Y",
			time_format = "%M:%H"
		}
	},
}
