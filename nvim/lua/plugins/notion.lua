return {
    "Al0den/notion.nvim",
    lazy = false, --Should work when lazy loaded, not tested
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require"notion".setup {
          autoUpdate = true,
          open = "notion",
          keys = { --Menu keys
              deleteKey = "d",
              editKey = "e",
              openNotion = "o",
              itemAdd = "a",
              viewKey = "v"
          },
          delays = {
              reminder = 4000,
              format = 200,
              update = 10000
          },
          notifications = true,
          editor = "light",
          viewOnEdit = {
              enabled = true,
              replace = false
          },
          direction = "vsplit",
          noEvent = "No events",
          debug = false
      }
    end,
}
