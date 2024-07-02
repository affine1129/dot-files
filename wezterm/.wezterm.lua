local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- color scheme
config.color_scheme = 'Everforest Dark (Gogh)'

-- 背景透過
config.window_background_opacity = 1

-- hide tab bar
config.hide_tab_bar_if_only_one_tab = true

-- hide title bar
config.window_decorations = "RESIZE"

-- disable keybindgins
config.disable_default_key_bindings = true

config.exit_behavior = "Close"

wezterm.on('toggle-opacity', function(window, pane)
  local overrides = window:get_config_overrides() or {}
  if overrides.window_background_opacity == 1 then
    overrides.window_background_opacity = 0.5
  else
    overrides.window_background_opacity = 1
  end
  window:set_config_overrides(overrides)
end)

-- ショートカットキー設定
local act = wezterm.action
config.keys = {
  {
    key = 'p',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ActivateCommandPalette,
  },
  -- {
  --   key = 'd',
  --   mods = 'CMD',
  --   action = act.SplitHorizontal { domain = 'CurrentPaneDomain' },
  -- },
  -- {
  --   key = '[',
  --   mods = 'CMD',
  --   action = act.Multiple{
  --     act.ActivatePaneDirection 'Next',
  --     act.SetPaneZoomState(true)
  --   }
  -- },
  -- {
  --   key = ']',
  --   mods = 'CMD',
  --   action = act.Multiple{
  --     act.ActivatePaneDirection 'Prev',
  --     act.SetPaneZoomState(true)
  --   }
  -- },
  {
    key = 'w',
    mods = 'CMD',
    action = act.CloseCurrentPane { confirm = true },
  },
  {
    key = 'h',
    mods = 'CMD',
    action = act.Search { CaseSensitiveString = 'hash' },
  },
  {
    key = 'c',
    mods = 'CMD|SHIFT',
    action = act.ActivateCopyMode
  },
  {
    key = 'Enter',
    mods = 'CMD|SHIFT',
    action = act.TogglePaneZoomState,
  },
  {
    key = 'u',
    mods = 'CMD',
    action = wezterm.action.EmitEvent 'toggle-opacity',
  },
  {
    key = 'p',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ActivateCommandPalette,
  },
  {
    key = 'c',
    mods = 'CMD',
    action = wezterm.action.CopyTo 'Clipboard',
  },
  {
    key = 'v',
    mods = 'CMD',
    action = act.PasteFrom 'Clipboard'
  },
  {
    key = 't',
    mods = 'CMD',
    action = act.SpawnCommandInNewTab({
        cwd = wezterm.home_dir,
    }),
  },
  { key = '[', mods = 'CMD|SHIFT', action = act.ActivateTabRelative(-1) },
  { key = ']', mods = 'CMD|SHIFT', action = act.ActivateTabRelative(1) },
  {
    key = "+",
    mods = "CMD|SHIFT",
    action = wezterm.action.IncreaseFontSize,
  },
  {
      key = "-",
      mods = "CMD",
      action = wezterm.action.DecreaseFontSize,
  },
}

return config

