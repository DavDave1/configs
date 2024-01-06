local wezterm = require('wezterm')

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.color_scheme = "catppuccin-mocha"

config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0
}

config.hide_tab_bar_if_only_one_tab = true

config.default_prog = { "/bin/zsh", "-l" }

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.9

-- config.leader = { key = 'CTRL', mods = '' }
config.keys = {
    {
        key = 's',
        mods = 'CTRL',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
        key = 'v',
        mods = 'CTRL',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
        key = 'q',
        mods = 'CTRL',
        action = wezterm.action.CloseCurrentPane { confirm = true },
    },
    {
        key = 'z',
        mods = 'CTRL',
        action = wezterm.action.TogglePaneZoomState,
    },
    {
        key = 'h',
        mods = 'CTRL',
        action = wezterm.action.ActivatePaneDirection 'Left',
    },
    {
        key = 'j',
        mods = 'CTRL',
        action = wezterm.action.ActivatePaneDirection 'Down',
    },
    {
        key = 'k',
        mods = 'CTRL',
        action = wezterm.action.ActivatePaneDirection 'Up',
    },
    {
        key = 'l',
        mods = 'CTRL',
        action = wezterm.action.ActivatePaneDirection 'Right',
    },
    {
        key = 'H',
        mods = 'CTRL',
        action = wezterm.action.AdjustPaneSize { 'Left', 5 },
    },
    {
        key = 'J',
        mods = 'CTRL',
        action = wezterm.action.AdjustPaneSize { 'Down', 5 },
    },
    {
        key = 'K',
        mods = 'CTRL',
        action = wezterm.action.AdjustPaneSize { 'Up', 5 }
    },
    {
        key = 'L',
        mods = 'CTRL',
        action = wezterm.action.AdjustPaneSize { 'Right', 5 },
    },
}

return config
