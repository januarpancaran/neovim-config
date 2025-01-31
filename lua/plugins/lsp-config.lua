return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "bashls",
          "clangd",
          "cssls",
          "eslint",
          "gopls",
          "html",
          "jdtls",
          "jsonls",
          "lua_ls",
          "marksman",
          "pyright",
          "rust_analyzer",
          "sqls",
          "svelte",
          "tailwindcss",
          "ts_ls",
          "vuels",
        },
      })
    end
  }, 

  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.bashls.setup( { capabilities = capabilities })
      lspconfig.clangd.setup( { capabilities = capabilities })
      lspconfig.cssls.setup( { capabilities = capabilities })
      lspconfig.eslint.setup( { capabilities = capabilities })
      lspconfig.gopls.setup( { capabilities = capabilities })
      lspconfig.html.setup( { capabilities = capabilities })
      lspconfig.jdtls.setup( { capabilities = capabilities })
      lspconfig.jsonls.setup( { capabilities = capabilities })
      lspconfig.lua_ls.setup( { capabilities = capabilities })
      lspconfig.marksman.setup( { capabilities = capabilities })
      lspconfig.pyright.setup( { capabilities = capabilities })
      lspconfig.rust_analyzer.setup( { capabilities = capabilities })
      lspconfig.sqls.setup( { capabilities = capabilities })
      lspconfig.svelte.setup( { capabilities = capabilities })
      lspconfig.tailwindcss.setup( { capabilities = capabilities })
      lspconfig.ts_ls.setup( { capabilities = capabilities })
      lspconfig.vuels.setup( { capabilities = capabilities })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end
  }
}
