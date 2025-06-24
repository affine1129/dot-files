return {
  'lambdalisue/glyph-palette.vim',
  config = function()
    local myGlyphPaletteGroup = vim.api.nvim_create_augroup("myGlyphPalette", {clear = true})

    vim.api.nvim_create_autocmd("FileType", {
        group = myGlyphPaletteGroup,
        pattern = "fern",
        callback = function()
            vim.fn["glyph_palette#apply"]()
        end
    })
  end
}



