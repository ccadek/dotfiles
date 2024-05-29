return {
  {
    "nvim-telescope/telescope.nvim",
    init = function()
      require("telescope").setup({
        defaults = {
          path_display = { "smart" },
        },
      })
    end,
  },
}
