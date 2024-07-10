-- telescope
return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    keys = {
      { "<C-f>",  require("telescope.builtin").find_files, desc = "Find Files" },
      { "<C-gf>", require("telescope.builtin").git_files,  desc = "Find Git Files" },
      { "<C-p>",  require("telescope.builtin").live_grep,  desc = "Grep" },
    },
    config = function()
      require("telescope").setup({})
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = { require("telescope.themes").get_dropdown({}) },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
