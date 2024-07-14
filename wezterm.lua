local wezterm = require("wezterm")

---Set the configuration table
local wezterm_config = {
    leader = {key = "s", mods = "CTRL", timeout_milliseconds=1000},
}

---Add some entries to the configuration
---This function has side-effects on wezterm_config
---@param table table; table containing the key values to add.
local function add_entries_to_config(table)
    for key, value in pairs(table) do
        wezterm_config[key] = value
    end
end

-- Add all entries to the configuration
add_entries_to_config(require("config.base"))
add_entries_to_config(require("config.fonts"))
add_entries_to_config(require("config.colours"))
add_entries_to_config(require("config.keys"))

-- Make sure the window is maximised on start
wezterm.on("gui-startup", function()
    local _, _, window = wezterm.mux.spawn_window({})
    window:gui_window():maximize()
end)

wezterm_config.unix_domains = {
    { name = "unix" },
}

return wezterm_config
