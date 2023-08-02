vim.g["fern#default_hidden"] = 1
vim.g["fern#opener"] = "edit"

vim.api.nvim_set_keymap("n", "<C-n>", ":Fern . -drawer -reveal=% -toggle -width=30<CR>", {noremap = true})

function fern_settings()
  local opts = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(0, "n", "p", "<plug>(fern-action-preview:toggle)", {silent = true})
  vim.api.nvim_buf_set_keymap(0, "n", "<c-p>", "<plug>(fern-action-preview:auto:toggle)", {silent = true})
  vim.api.nvim_buf_set_keymap(0, "n", "<", "<C-w><", {silent = true})
  vim.api.nvim_buf_set_keymap(0, "n", ">", "<C-w>>", {silent = true})
  vim.api.nvim_buf_set_keymap(0, "n", "<C-b>", ":Fern bookmark:///<CR>", {})
  vim.api.nvim_buf_set_keymap(0, "n", "<C-j>", "<C-w>j", opts)
  vim.api.nvim_buf_set_keymap(0, "n", "<C-k>", "<C-w>k", opts)
  vim.api.nvim_buf_set_keymap(0, "n", "<C-l>", "<C-w>l", opts)
  vim.api.nvim_buf_set_keymap(0, "n", "<C-h>", "<C-w>h", opts)
end

vim.api.nvim_exec([[
  augroup fern-settings
    autocmd!
    autocmd FileType fern call v:lua.fern_settings()
  augroup end
]], false)

