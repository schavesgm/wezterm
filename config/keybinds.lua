local wezterm = require("wezterm")
local action = wezterm.action

return {
    keys = {
        -- Core functionality
        { key = "q",          mods = "SUPER|CTRL",  action = action.QuitApplication },

        -- Command palette
        { key = "p",          mods = "SUPER|CTRL",  action = action.ActivateCommandPalette },

        -- Special modes
        { key = "x",          mods = "SUPER|CTRL",  action = action.ActivateCopyMode },

        -- Launcher
        { key = 'd',          mods = 'SUPER|CTRL',  action = wezterm.action.ShowLauncher },

        -- Pane management
        { key = 'LeftArrow',  mods = 'SUPER|SHIFT', action = action.ActivatePaneDirection 'Left', },
        { key = 'RightArrow', mods = 'SUPER|SHIFT', action = action.ActivatePaneDirection 'Right', },
        { key = 'UpArrow',    mods = 'SUPER|SHIFT', action = action.ActivatePaneDirection 'Up', },
        { key = 'DownArrow',  mods = 'SUPER|SHIFT', action = action.ActivatePaneDirection 'Down', },
        { key = 'LeftArrow',  mods = 'SUPER|CTRL',  action = action.AdjustPaneSize { 'Left', 1 }, },
        { key = 'RightArrow', mods = 'SUPER|CTRL',  action = action.AdjustPaneSize { 'Right', 1 }, },
        { key = 'UpArrow',    mods = 'SUPER|CTRL',  action = action.AdjustPaneSize { 'Up', 1 } },
        { key = 'DownArrow',  mods = 'SUPER|CTRL',  action = action.AdjustPaneSize { 'Down', 1 } },
        { key = '[',          mods = 'SUPER|CTRL',  action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" } },
        {
            key = ']',
            mods = 'SUPER|CTRL',
            action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" }
        },

        -- Tab management
        { key = "t",  mods = "SUPER|CTRL", action = action.SpawnTab "CurrentPaneDomain" },
        { key = "w",  mods = "SUPER|CTRL", action = action.CloseCurrentTab { confirm = false } },
        { key = "l",  mods = "SUPER|CTRL", action = action.ActivateTabRelative(1) },
        { key = "h",  mods = "SUPER|CTRL", action = action.ActivateTabRelative(-1) },
        { key = ".",  mods = "SUPER|CTRL", action = action.MoveTabRelative(1) },
        { key = ",",  mods = "SUPER|CTRL", action = action.MoveTabRelative(-1) },
        { key = 'F9', mods = "ALT",        action = wezterm.action.ShowTabNavigator },
        {
            key = "m",
            mods = "SUPER|CTRL",
            action = action.PromptInputLine {
                description = 'New name for tab',
                action = wezterm.action_callback(
                    function(window, _, line)
                        if line then
                            window:active_tab():set_title(line)
                        end
                    end
                )
            }
        },

        -- Window management
        { key = "n", mods = "SUPER|CTRL", action = action.SpawnWindow },

        -- Clipboard copy/paste
        { key = "c", mods = "SUPER|CTRL", action = action.CopyTo "ClipboardAndPrimarySelection" },
        { key = "v", mods = "SUPER|CTRL", action = action.PasteFrom "Clipboard" }
    },
}
