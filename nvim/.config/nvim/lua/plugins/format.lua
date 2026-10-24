return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" }, -- Triggers instantly right before saving a file
		cmd = { "ConformInfo" },
		config = function()
			require("conform").setup({
				-- Define which code formatters to run per language
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "black" }, -- "black" is the industry standard auto-formatter for Python
					c = { "clang-format" },
					cpp = { "clang-format" },
				},

				-- Automatically format when you save the file
				format_on_save = {
					timeout_ms = 2000, -- Don't hang the editor if a formatter takes too long
					lsp_format = "fallback", -- Fall back to standard LSP if no dedicated formatter exists
				},
			})
		end,
	},
}
