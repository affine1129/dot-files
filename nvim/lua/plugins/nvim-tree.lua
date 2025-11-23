return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
 config = function()
    require("nvim-tree").setup {
      view = {
        adaptive_size = true,
      },
      update_focused_file = {
        enable = true,
      },
      on_attach = function(bufnr)
        local api = require("nvim-tree.api")
        api.config.mappings.default_on_attach(bufnr)

        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- <CR>: ファイルを開く or ディレクトリ展開
        vim.keymap.set("n", "<CR>", function()
          local node = api.tree.get_node_under_cursor()
          if node.type == "directory" then
            api.tree.change_root_to_node()  -- ← これでそのフォルダをルートに
          else
            api.node.open.edit()
          end
        end, opts("Set folder as root or open file"))

        -- l: ファイルを開く or ディレクトリ展開
        vim.keymap.set("n", "l", function()
          local node = api.tree.get_node_under_cursor()
          if node.type == "directory" then
            api.node.open.edit()
          else
            api.node.open.edit()
          end
        end, opts("Open or Expand"))

        -- h: ディレクトリを閉じる
        vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Directory"))
      end,
    }

    vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')
  end,
}
