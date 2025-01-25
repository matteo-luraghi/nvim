-- https://github.com/folke/which-key.nvim?tab=readme-ov-file
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- Configuration for all keybindings
    plugins = {
      spelling = { enabled = true },
    },
    presets = {
      operators = false,
      motions = false,
      text_objects = false,
      windows = true,
      nav = true,
      z = true,
      g = true,
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
