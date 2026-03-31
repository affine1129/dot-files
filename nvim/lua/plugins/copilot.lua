return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = false,
        auto_trigger = false,
        keymap = {
          accept = false,
        },
      },
      panel = {
        enabled = false
      },
      filetypes = {
        markdown = true,
        ["."] = false,
      }
    })
  end,
}
