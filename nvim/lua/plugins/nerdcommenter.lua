return {
  'preservim/nerdcommenter',
  config = function()
    -- Add spaces after comment delimiters by default
    vim.g.NERDSpaceDelims = 1
    -- Enable trimming of trailing whitespace when uncommenting
    vim.g.NERDTrimTrailingWhitespace = 1
    vim.g.NERDDefaultAlign = 'left'

    vim.api.nvim_set_keymap('n', '<leader>cc', '<Plug>NERDCommenterToggle', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', '<leader>cc', '<Plug>NERDCommenterToggle', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>c ', '<Plug>NERDCommenterComment', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', '<leader>c ', '<Plug>NERDCommenterComment', { noremap = true, silent = true })
  end
}


