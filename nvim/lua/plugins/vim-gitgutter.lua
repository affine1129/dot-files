return {
  'airblade/vim-gitgutter',
  config = function()
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
