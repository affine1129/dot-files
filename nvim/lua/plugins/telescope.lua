return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-telescope/telescope-project.nvim',
    'rmagatti/auto-session',
    'nvim-tree/nvim-tree.lua',
  },
  config = function()
    local telescope      = require("telescope")
    local builtin        = require("telescope.builtin")
    local proj_actions   = require("telescope._extensions.project.actions")
    local action_state   = require("telescope.actions.state")
    local nvim_tree_api  = require("nvim-tree.api")

    -- キーマッピング
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    vim.keymap.set('n', '<leader>fc', builtin.colorscheme, {})
    vim.keymap.set('n', '<leader>ft', ":Telescope<CR>", { noremap = true, silent = true })
    vim.keymap.set('n', '?',          builtin.current_buffer_fuzzy_find, {})
    vim.keymap.set('n', '<leader>fp', function()
      telescope.extensions.project.project({})
    end, { noremap = true, silent = true })

    telescope.setup({
      extensions = {
        project = {
          base_dirs = {
            { '~/.config',    max_depth = 1 },
            { '~/Workspace/', max_depth = 3 },
          },
          hidden_files        = false,
          theme               = "dropdown",
          order_by            = "asc",
          search_by           = "title",
          sync_with_nvim_tree = true,
          cd_scope            = { "global" },
          on_project_selected = function(prompt_bufnr)
            -- 1) switch global cwd (so :pwd and sessions use the right dir)
            proj_actions.change_working_directory(prompt_bufnr, true)

            -- 2) grab the actual path
            local entry = action_state.get_selected_entry()
            local path  = vim.fn.expand(entry.value or entry.cwd or entry.path or "")
            if path == "" then
              vim.notify("Cannot get the project path.", vim.log.levels.ERROR)
              return
            end

            -- 3) use the correct API to change nvim-tree’s root
            nvim_tree_api.tree.change_root(path)

            vim.api.nvim_set_current_dir(vim.fn.expand(path))

            -- 4) restore the auto-session for that folder
            vim.cmd("SessionRestore")
          end,
        },
      },
    })

    telescope.load_extension('project')
  end,
}
