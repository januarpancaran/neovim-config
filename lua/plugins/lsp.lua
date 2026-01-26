return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local servers = {
			"bashls",
			"clangd",
			"cmake",
			"cssls",
			"gopls",
			"html",
			"intelephense",
			"jdtls",
			"jsonls",
			"lua_ls",
			"marksman",
			"omnisharp",
			"pyright",
			"rust_analyzer",
			"svelte",
			"tailwindcss",
			"terraformls",
			"ts_ls",
			"yamlls",
		}

		require("mason").setup()

		require("mason-lspconfig").setup({
			ensure_installed = servers,
		})

		for _, server in ipairs(servers) do
			vim.lsp.config[server] = {
				capabilities = capabilities,
			}
		end

		vim.lsp.enable(servers)
	end,
}
