-- デフォルト設定
local status, toggleterm = pcall(require, "toggleterm")
if not status then
  return
end

toggleterm.setup({
  open_mapping = [[<C-S-h>]],
  hide_numbers = true,
  direction = "horizontal",
  shell = vim.o.shell,
  size = 25
})

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<C-j><C-j>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- floatのターミナル設定
local Terminal = require("toggleterm.terminal").Terminal

local float_term = Terminal:new({
  direction = "float",
  hidden = true,
  count = 6
})
function _float_term_toggle()
  float_term:toggle()
end
vim.api.nvim_set_keymap("n", "<C-S-f>", "<cmd>lua _float_term_toggle()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-S-f>", "<cmd>lua _float_term_toggle()<CR>", { noremap = true, silent = true })

-- lazygitの設定
local lazygit = Terminal:new({
  cmd = "lazygit",
  direction = "float",
  hidden = true,
  count = 7
})
function _lazygit_toggle()
  lazygit:toggle()
end
vim.api.nvim_set_keymap("n", "<C-S-g>", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-S-g>", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })

-- lazydockerの設定
local lazydocker = Terminal:new({
  cmd = "lazydocker",
  direction = "float",
  hidden = true,
  count = 8
})
function _lazydocker_toggle()
  lazydocker:toggle()
end
vim.api.nvim_set_keymap("n", "<C-S-d>", "<cmd>lua _lazydocker_toggle()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-S-d>", "<cmd>lua _lazydocker_toggle()<CR>", { noremap = true, silent = true })
