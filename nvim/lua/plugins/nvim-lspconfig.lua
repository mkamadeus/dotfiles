return {
	"neovim/nvim-lspconfig",
	lazy = false,
	dependencies = {
		-- main one
		{ "ms-jpq/coq_nvim", branch = "coq" },

		-- 9000+ Snippets
		{ "ms-jpq/coq.artifacts", branch = "artifacts" },
	},
	init = function()
		vim.g.coq_settings = {
			auto_start = "shut-up", -- if you want to start COQ at startup
			-- Your COQ settings here
		}
	end,
	config = function()
		local lspconfig = require("lspconfig")

		-- Python LSP setup
		lspconfig.ruff.setup({})

		-- Typescript LSP setup
		lspconfig.ts_ls.setup({})

		-- Go LSP setup
		lspconfig.gopls.setup({})

		-- Rust LSP setup
		lspconfig.rust_analyzer.setup({})
	end,
}
