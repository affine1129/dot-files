local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-f><C-f>', builtin.find_files, {})
vim.keymap.set('n', '<C-f><C-p>', builtin.live_grep, {})
vim.keymap.set('n', '<C-f><C-b>', builtin.buffers, {})
vim.keymap.set('n', '<C-f><C-h>', builtin.help_tags, {})
vim.keymap.set('n', '<C-f><C-s>', builtin.colorscheme, {})
vim.keymap.set('n', '<C-f><C-t>', ":Telescope<CR>", {})
vim.keymap.set('n', '?', builtin.current_buffer_fuzzy_find, {})
vim.api.nvim_set_keymap(
        'n',
        '<C-f><C-w>',
        ":lua require'telescope'.extensions.project.project{}<CR>",
        {noremap = true, silent = true}
)

telescope = require("telescope").setup({
  extensions = {
    coc = {
        theme = 'ivy',
        prefer_locations = true, -- always use Telescope locations to preview definitions/declarations/implementations etc
    },
    project = {
      base_dirs = {
        {
          '~/.config', max_depth = 1
        },
        {
          '~/Workspace/', max_depth = 3
        },
      },
      hidden_files = false, -- default: false
      theme = "dropdown",
      order_by = "asc",
      search_by = "title",
      sync_with_nvim_tree = true, -- default false
      -- default for on_project_selected = find project files
      on_project_selected = function(prompt_bufnr)
        require("telescope._extensions.project.actions").change_working_directory(prompt_bufnr, false)
        vim.cmd("SessionRestore")
      end
    }

  }
})
require('telescope').load_extension('coc')
require('telescope').load_extension('project')

