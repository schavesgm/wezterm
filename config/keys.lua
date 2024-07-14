local wezterm = require("wezterm")
local action = wezterm.action

return {
    keys = {
        -- Command palette
        { key = "p", mods = "LEADER", action = action.ActivateCommandPalette },

        -- Special modes
        { key = "x", mods = "LEADER", action = action.ActivateCopyMode },

        -- Some launchers
        {
            key = "1",
            mods = "LEADER",
            action = wezterm.action.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }),
        },
        {
            key = "2",
            mods = "LEADER",
            action = wezterm.action.ShowLauncherArgs({ flags = "FUZZY|TABS" }),
        },
        {
            key = "3",
            mods = "LEADER",
            action = wezterm.action.ShowLauncherArgs({ flags = "FUZZY|DOMAINS" }),
        },

        -- Clipboard copy/paste
        { key = "c", mods = "LEADER", action = action.CopyTo("ClipboardAndPrimarySelection") },
        { key = "v", mods = "LEADER", action = action.PasteFrom("Clipboard") },

        -- Reload wezterm configuration
        {
            key = "r",
            mods = "LEADER",
            action = wezterm.action.ReloadConfiguration,
        },

        -- Window management
        { key = "n", mods = "LEADER", action = action.SpawnWindow },

        -- Workspaces
        {
            key = "b",
            mods = "LEADER",
            action = action.PromptInputLine({
                description = wezterm.format({
                    { Attribute = { Intensity = "Bold" } },
                    { Foreground = { AnsiColor = "Fuchsia" } },
                    { Text = "Enter name for new workspace:" },
                }),
                action = wezterm.action_callback(function(window, pane, line)
                    if line then
                        window:perform_action(action.SwitchToWorkspace({ name = line }), pane)
                    end
                end),
            }),
        },

        -- Tab management
        { key = "t", mods = "LEADER", action = action.SpawnCommandInNewTab({ cwd = os.getenv("HOME") }) },
        { key = "w", mods = "LEADER", action = action.CloseCurrentTab({ confirm = false }) },
        { key = "l", mods = "LEADER", action = action.ActivateTabRelative(1) },
        { key = "h", mods = "LEADER", action = action.ActivateTabRelative(-1) },
        { key = ".", mods = "LEADER", action = action.MoveTabRelative(1) },
        { key = ",", mods = "LEADER", action = action.MoveTabRelative(-1) },
        { key = "u", mods = "LEADER", action = wezterm.action.ShowTabNavigator },
        {
            key = "i",
            mods = "LEADER",
            action = action.PromptInputLine({
                description = wezterm.format({
                    { Attribute = { Intensity = "Bold" } },
                    { Foreground = { AnsiColor = "Fuchsia" } },
                    { Text = "Enter new name for tab:" },
                }),
                action = wezterm.action_callback(function(window, _, line)
                    if line then
                        window:active_tab():set_title(line)
                    end
                end),
            }),
        },

        -- Pane management
        { key = "-",          mods = "LEADER",     action = action.SplitVertical({ domain = "CurrentPaneDomain" }) },
        { key = "=",          mods = "LEADER",     action = action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
        { key = "m",          mods = "LEADER",     action = action.TogglePaneZoomState },
        { key = "l",          mods = "SUPER|CTRL", action = action.ActivatePaneDirection("Right") },
        { key = "h",          mods = "SUPER|CTRL", action = action.ActivatePaneDirection("Left") },
        { key = "k",          mods = "SUPER|CTRL", action = action.ActivatePaneDirection("Up") },
        { key = "j",          mods = "SUPER|CTRL", action = action.ActivatePaneDirection("Down") },
        { key = "LeftArrow",  mods = "SUPER|CTRL", action = action.AdjustPaneSize({ "Left", 1 }) },
        { key = "RightArrow", mods = "SUPER|CTRL", action = action.AdjustPaneSize({ "Right", 1 }) },
        { key = "UpArrow",    mods = "SUPER|CTRL", action = action.AdjustPaneSize({ "Up", 1 }) },
        { key = "DownArrow",  mods = "SUPER|CTRL", action = action.AdjustPaneSize({ "Down", 1 }) },
    },
}
