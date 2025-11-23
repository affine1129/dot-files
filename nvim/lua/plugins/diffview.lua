return {
  {
    "sindrets/diffview.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("diffview").setup({
        enhanced_diff_hl = true,
        file_panel = {
          win_config = { position = "left", width = 35 },
        },
      })
    end,
  },
}
