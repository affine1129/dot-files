return {
  'airblade/vim-gitgutter',
  config = function()
    -- g]で前の変更箇所へ移動する
    vim.api.nvim_set_keymap('n', 'g[', ':GitGutterPrevHunk<CR>', {noremap = true})
    -- g[で次の変更箇所へ移動する
    vim.api.nvim_set_keymap('n', 'g]', ':GitGutterNextHunk<CR>', {noremap = true})

    -- ghでdiffをハイライトする
    vim.api.nvim_set_keymap('n', 'gh', ':GitGutterLineHighlightsToggle<CR>', {noremap = true})
    -- gpでカーソル行のdiffを表示する
    vim.api.nvim_set_keymap('n', 'gp', ':GitGutterPreviewHunk<CR>', {noremap = true})

    -- 記号の色を変更する
    vim.cmd [[
    highlight GitGutterAdd ctermfg=green
    highlight GitGutterChange ctermfg=blue
    highlight GitGutterDelete ctermfg=red
    ]]

    -- 反映時間を短くする(デフォルトは4000ms)
    vim.opt.updatetime = 250
  end
}
