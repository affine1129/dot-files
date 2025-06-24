return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local lsp_names = function()
    local clients = {}
    for _, client in ipairs(vim.lsp.get_clients { bufnr = 0 }) do
      if client.name == 'null-ls' then
        local sources = {}
        for _, source in ipairs(require('null-ls.sources').get_available(vim.bo.filetype)) do
          table.insert(sources, source.name)
        end
        table.insert(clients, 'null-ls(' .. table.concat(sources, ', ') .. ')')
      else
        table.insert(clients, client.name)
      end
    end
    return ' ' .. table.concat(clients, ', ')
  end

  require('lualine').setup {
    options = {
      theme = 'tokyonight-moon'
    },
    sections = {
      lualine_a = {
        {
          'datetime',
          -- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
          style = '%Y/%m/%d(%A) %H:%M'
        }
      },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_x = { lsp_names },
      lualine_y = { 'encoding', 'fileformat', 'filetype' },
      lualine_z = { 'progress', 'location' },
    }
  }
  end
}
