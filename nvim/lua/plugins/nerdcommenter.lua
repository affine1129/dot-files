return {
  'preservim/nerdcommenter',
  config = function()
    -- Add spaces after comment delimiters by default
    vim.g.NERDSpaceDelims = 1
    -- Enable trimming of trailing whitespace when uncommenting
    vim.g.NERDTrimTrailingWhitespace = 1
    vim.g.NERDDefaultAlign = 'left'
  end
}


