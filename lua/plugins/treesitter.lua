return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	config = function()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "*",
			callback = function(args)
				local lang = vim.treesitter.language.get_lang(args.match) or args.match

				require("nvim-treesitter").install({ lang })
			end,
		})
	end,
}
