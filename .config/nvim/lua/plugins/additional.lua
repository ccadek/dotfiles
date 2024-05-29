return {
  { "jiangmiao/auto-pairs" },
  { "chrisbra/csv.vim" },
  { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
  {
    "rose-pine/neovim",
    config = function()
      require("rose-pine").setup()
      vim.cmd([[ colorscheme rose-pine ]])
    end,
  },
}
