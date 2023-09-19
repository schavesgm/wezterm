local wezterm_config = {}

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

return wezterm_config


-- return {
--     font = default_font,
--     font_size = 18.0,
--     audible_bell = "Disabled",
--     color_scheme = "kanagawabones",
--     use_fancy_tab_bar = true,
--     window_frame = {
--         font = default_font,
--         font_size = 15.0,
--         active_titlebar_bg = "#1F1F28",
--         inactive_titlebar_bg = "#1F1F28",
--     },
--     colors = {
--         tab_bar = {
--             inactive_tab_edge = "#FF9E3B",
--             active_tab = {
--                 bg_color = "#363646",
--                 fg_color = "#DCD7BA",
--                 intensity = "Half",
--             },
--             inactive_tab = {
--                 bg_color = "#1F1F28",
--                 fg_color = "#C8C093",
--             },
--             inactive_tab_hover = {
--                 bg_color = "#1F1F28",
--                 fg_color = "#FF9E3B",
--             },
--             new_tab = {
--                 bg_color = "#1F1F28",
--                 fg_color = "#76946A",
--             },
--             new_tab_hover = {
--                 bg_color = "#1F1F28",
--                 fg_color = "#98BB6C",
--             }
--         }
--     },
-- }
