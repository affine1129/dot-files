return {
  {
    "rhysd/git-messenger.vim",
    cmd = "GitMessenger",
    keys = {
      { "<leader>gm", ":GitMessenger<CR>", desc = "GitMessenger: show commit message" },
    },
    config = function()
      vim.g.git_messenger_open_after_current_line_blame = 0
      vim.g.git_messenger_floating_win_opts = { border = "rounded" }
    end,
  },
}

