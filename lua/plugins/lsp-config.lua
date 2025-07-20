return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  -- plugin to install lsps
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          -- complete list of lsps at https://github.com/williamboman/mason-lspconfig.nvim
          "lua_ls",
          "bashls",
          "clangd",
          "cssls",
          "dockerls",
          "docker_compose_language_service",
          "gopls", -- or golangci_lint_ls
          "html",
          "htmx",
          "jsonls",
          "jdtls",         -- java, or java_language_server
          "ts_ls",         -- ts
          "quick_lint_js", -- or vtsls
          "intelephense",  -- php
          "pyright",       -- or pylsp
          "rust_analyzer",
          "sqlls",
          "lemminx", -- xml
          "yamlls",
        },
      })
    end,
  },
  -- plugin to use lsps
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.bashls.setup({ capabilities = capabilities })
      lspconfig.clangd.setup({ capabilities = capabilities })
      lspconfig.cssls.setup({ capabilities = capabilities })
      lspconfig.dockerls.setup({ capabilities = capabilities })
      lspconfig.docker_compose_language_service.setup({ capabilities = capabilities })
      lspconfig.gopls.setup({ capabilities = capabilities })
      lspconfig.html.setup({ capabilities = capabilities })
      lspconfig.htmx.setup({ capabilities = capabilities })
      lspconfig.jsonls.setup({ capabilities = capabilities })
      lspconfig.ts_ls.setup({ capabilities = capabilities })
      lspconfig.quick_lint_js.setup({ capabilities = capabilities })
      lspconfig.intelephense.setup({ capabilities = capabilities })
      lspconfig.pyright.setup({ capabilities = capabilities })
      lspconfig.rust_analyzer.setup({ capabilities = capabilities })
      lspconfig.sqlls.setup({ capabilities = capabilities })
      lspconfig.lemminx.setup({ capabilities = capabilities })
      lspconfig.yamlls.setup({ capabilities = capabilities })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>vrr", function()
        vim.lsp.buf.references()
      end, opts)
      vim.keymap.set("n", "<leader>vrn", function()
        vim.lsp.buf.rename()
      end, opts)
      vim.keymap.set("n", "<C-h>", function()
        vim.lsp.buf.signature_help()
      end, opts)
    end,
  },
  -- plugin to install formatters and linters
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      require("mason-tool-installer").setup({
        ensure_installed = {
          -- linters
          "golangci-lint",      -- Go
          "pylint",             -- Python
          "checkstyle",         -- Java
          -- formatters
          "black",              -- Python
          "isort",              -- Python imports
          "stylua",             -- Lua
          "clang-format",       -- C, C++
          "gofumpt",            -- Go
          "goimports",          -- Go
          "golines",            -- Go
          "gotests",            -- Go
          "google-java-format", -- Java
          "mdformat",           -- Markdown
          "phpcbf",             -- PHP
          "prettier",           -- JS, TS, CSS, etc.
          "shfmt",              -- Shell
        },
        auto_update = true,
        run_on_start = true,
      })
    end,
  },
}
