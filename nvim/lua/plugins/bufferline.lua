return {
  'akinsho/bufferline.nvim',
  config = function()
  vim.opt.termguicolors = true
  require("bufferline").setup {
    options = {
      mode = "tabs",
      color_icons = true
    }
  }
  end
}
