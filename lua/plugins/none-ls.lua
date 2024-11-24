return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- linters
        null_ls.builtins.diagnostics.golangci_lint, -- Go
        null_ls.builtins.diagnostics.pylint,        -- Python
        null_ls.builtins.diagnostics.checkstyle,    -- Java

        -- formatters
        null_ls.builtins.formatting.black,              -- Python
        null_ls.builtins.formatting.isort,              -- Python imports
        null_ls.builtins.formatting.stylua,             -- Lua
        null_ls.builtins.formatting.clang_format,       -- C, C++
        null_ls.builtins.formatting.gofumpt,            -- Go
        null_ls.builtins.formatting.goimports,          -- Go
        null_ls.builtins.formatting.golines,            -- Go
        null_ls.builtins.formatting.google_java_format, -- Java
        null_ls.builtins.formatting.mdformat,           -- Markdown
        null_ls.builtins.formatting.phpcbf,             -- PHP
        null_ls.builtins.formatting.prettier,           -- JS, TS, CSS, etc.
        null_ls.builtins.formatting.shfmt,              -- Shell
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}) -- format keybinding
  end,
}
