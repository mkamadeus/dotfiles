return {
	"stevearc/oil.nvim",
	lazy = false,
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		default_file_explorer = true,
	},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	keys = {
		{
			"<leader>ee",
			"<CMD>Oil<CR>",
			desc = "Open Oil Explorer",
		},
	},
}
