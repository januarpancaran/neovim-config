return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = { "nvim-treesitter/nvim-treesitter-context" },
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			install_dir = vim.fn.stdpath("data") .. "/site",
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})

		require("treesitter-context").setup()
	end,
}
