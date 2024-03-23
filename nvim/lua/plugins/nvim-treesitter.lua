require("nvim-treesitter.configs").setup {
  ensure_installed = {"toml", "python", "typescript", "html", "markdown"},
  auto_install = true,
  sync_install = false,
  highlight = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
    colors = {
      "#f6dcbc",
      "#bcf6bf",
      "#bcf3f6",
      "#bfbcf6",
      "#f6bcf6",
    }
  }
}

