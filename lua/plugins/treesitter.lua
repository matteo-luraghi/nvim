-- treesitter
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true, -- auto install for new languages
      ensure_installed = {
        "vim",
        "c",
        "lua",
        "cpp",
        "java",
        "go",
        "python",
        "php",
        "rust",
        "javascript",
        "html",
        "css",
        "markdown",
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
