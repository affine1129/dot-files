return {
  'Equilibris/nx.nvim',
  config = function()
    require('nx').setup({
      nx_cmd_root = 'npx nx',
    })
    require('nx.generators')
    vim.keymap.set("n", "<leader>ng", function()
      require('nx.generators').generators()
    end)
    vim.keymap.set("n", "<leader>na", function()
      require('nx.on-project-mod')()
      require('nx.actions').actions_finder()
    end)

  end
}




