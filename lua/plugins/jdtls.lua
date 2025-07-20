return {
  "mfussenegger/nvim-jdtls",
  ft = { "java" },
  config = function()
    local jdtls = require("jdtls")
    local home = os.getenv("HOME")
    local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
    local workspace_dir = home .. "/.local/share/eclipse/" .. project_name

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local config = {
      cmd = {
        "jdtls",
      },
      root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }),
      capabilities = capabilities,
      settings = {
        java = {
          format = {
            enabled = true,
          },
        },
      },
      init_options = {
        workspace = workspace_dir,
      },
    }

    jdtls.start_or_attach(config)
  end,
}

