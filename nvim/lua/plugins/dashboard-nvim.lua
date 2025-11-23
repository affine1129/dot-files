return {
  'nvimdev/dashboard-nvim',
  event        = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('dashboard').setup {
      theme  = 'hyper',
      config = {
        week_header = { enable = true },
        shortcut    = {
          { desc = '󰊳 Update',  group = '@property',       action = 'Lazy update',           key = 'u' },
          { icon = ' ',         icon_hl = '@variable',     desc = 'Files',   group = 'Label', action = 'Telescope find_files', key = 'f' },
          { desc = ' Apps',     group = 'DiagnosticHint', action = 'Telescope app',           key = 'a' },
          { desc = ' dotfiles', group = 'Number',         action = 'Telescope dotfiles',      key = 'd' },
        },
        packages = { enable = true },
        project = {
          enable = true,
          limit  = 8,
          icon   = ' ',
          label  = 'Projects',
          -- either call the Telescope command:
          action = 'Telescope project',
          -- or, if you prefer a Lua function, you can do:
          -- action = function()
          --   require('telescope').extensions.project.project{}
          -- end,
        },
        mru = {
          enable   = true,
          limit    = 10,
          icon     = ' ',
          label    = 'Recent Files',
          cwd_only = false,
        },
        footer = {},
      },
    }
  end,
}
