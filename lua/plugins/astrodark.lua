-- astrodark theme
return {
  {
    "AstroNvim/astrotheme",
    config = function()
      require("astrotheme").setup({
        palette = "default", -- or any other valid palette
        style = "dark",  -- or "light"
      })

      -- set the colorscheme
      vim.cmd.colorscheme("astrodark")
    end,
  },
}
