local api = vim.api

local dein_dir = vim.fn.expand('~/.cache/dein')
local dein_repo_dir = dein_dir..'/repos/github.com/Shougo/dein.vim'

-- api.nvim_set_var('dein#install_github_api_token', os.getenv('DEIN_GITHUB_TOKEN'))

if not string.find(api.nvim_get_option('runtimepath'), '/dein.vim') then
  if not (vim.fn.isdirectory(dein_repo_dir) == 1) then
    os.execute('git clone https://github.com/Shougo/dein.vim '..dein_repo_dir)
  end
  api.nvim_set_option('runtimepath', dein_repo_dir..','..api.nvim_get_option('runtimepath'))
end

if (vim.fn['dein#load_state'](dein_dir) == 1) then
  vim.fn['dein#begin'](dein_dir)
  local rc_dir = vim.fn.expand('~/.config/nvim/toml')
  local toml = rc_dir..'/dein.toml'
  local toml_theme = rc_dir..'/dein_theme.toml'
  local toml_filer = rc_dir..'/dein_filer.toml'
  local toml_md = rc_dir..'/dein_md.toml'
  local toml_git = rc_dir..'/dein_git.toml'
  local toml_coding = rc_dir..'/dein_coding.toml'
  local toml_util = rc_dir..'/dein_util.toml'
  vim.fn['dein#load_toml'](toml_theme, { lazy = 0 })
  vim.fn['dein#load_toml'](toml, { lazy = 0 })
  vim.fn['dein#load_toml'](toml_filer, { lazy = 0 })
  vim.fn['dein#load_toml'](toml_md, { lazy = 1 })
  vim.fn['dein#load_toml'](toml_git, { lazy = 0 })
  vim.fn['dein#load_toml'](toml_coding, { lazy = 1 })
  vim.fn['dein#load_toml'](toml_util, { lazy = 0 })
  vim.fn['dein#end']()
  vim.fn['dein#save_state']()
end

if (vim.fn['dein#check_install']() ~= 0) then
  vim.fn['dein#install']()
end

local removed_plugins = vim.fn['dein#check_clean']()
if vim.fn.len(removed_plugins) > 0 then
  vim.fn.map(removed_plugins, "delete(v:val, 'rf')")
  vim.fn['dein#recache_runtimepath']()
end
