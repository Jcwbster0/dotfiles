return {
	-- Core Language Server configurations
	{ "neovim/nvim-lspconfig" },

	-- Mason: Package manager for your language engines
	{ "williamboman/mason.nvim", config = true },

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "pyright" },
			})

			-- Native Nvim 0.11+ API Way to activate pyright
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			vim.lsp.config("pyright", {
				capabilities = capabilities,
			})
			vim.lsp.enable("pyright")
		end,
	},
}
