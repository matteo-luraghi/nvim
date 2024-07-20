-- neotree
-- native key bindings:
-- a: create file or directory ("/" at the end of the name)
-- d: delete file or directory
-- r: rename file or directory
-- f: find a file or directory
-- ctrl+w+h/l to switch focus from tree to file and vice versa

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  keys = {
    { "<leader>o",  "<cmd>Neotree toggle<cr>",           desc = "NeoTree Toggle" },
    { "<leader>gs", "<cmd>Neotree right git_status<cr>", desc = "Git Status" },
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = true,
          hide_gitignored = true,
          hide_hidden = true,
          never_show = {
            "__pycache__",
            ".git",
          },
        },
      },
      window = {
        width = 30,
        mappings = {
          ["H"] = "toggle_hidden",
        },
      },
      git_status = {
        window = {
          position = "right",
          mappings = {
            ["A"] = "git_add_all",
            ["gc"] = "git_commit",
            ["gp"] = "git_push",
            ["gg"] = "git_commit_and_push",
            -- ["gu"] = "git_pull",
          },
        },
      },
    })
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
}
