return {
  'preservim/nerdcommenter',
  init = function()
    vim.g.NERDCreateDefaultMappings = 0
  end,
  config = function()
    -- Add spaces after comment delimiters by default
    vim.g.NERDSpaceDelims = 1
    -- Enable trimming of trailing whitespace when uncommenting
    vim.g.NERDTrimTrailingWhitespace = 1
    vim.g.NERDDefaultAlign = 'left'
  end
}


