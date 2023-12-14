local function on_dir_change()
  require('nx.read-configs').read_nx_root(function() end)
end

vim.api.nvim_create_autocmd("DirChanged", {
  pattern = "*",
  callback = on_dir_change
})

