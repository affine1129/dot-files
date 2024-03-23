require('nx').setup({
  nx_cmd_root = 'npx nx',
})
require('nx.generators')

vim.keymap.set("n", "<C-f><C-n>", function()
  require('nx.generators').generators()
end)
vim.keymap.set("n", "<C-f><C-a>", function()
  require('nx.on-project-mod')()
  require('nx.actions').actions_finder()
end)

