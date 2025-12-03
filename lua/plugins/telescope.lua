return {
	"nvim-telescope/telescope.nvim",
	tag = "v0.2.0",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({ defaults = { file_ignore_patterns = { "dist", "node_modules" } } })
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<Space>f", builtin.find_files, {})
		vim.keymap.set("n", "<Space>g", builtin.live_grep, {})
	end,
}
