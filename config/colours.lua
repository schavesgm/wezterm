-- List all colour schemes
local colour_schemes = {
    ["Kanagawa"] = require("config.cschemes.kanagawa"),
}

local colour_scheme = "Kanagawa"
local colour_table = colour_schemes[colour_scheme].table

return {
    -- Define the colour-schemes
    color_schemes = colour_schemes,
    color_scheme = colour_scheme,

    -- Define the tab configuration
    use_fancy_tab_bar = false,
    enable_tab_bar = true,
    tab_bar_at_bottom = true,
    colors = {
        tab_bar = {
            background = colour_table.background,
            inactive_tab_edge = colour_table.color_3,
            active_tab = {
                bg_color = colour_table.lighter_background,
                fg_color = colour_table.foreground,
                intensity = "Normal",
            },
            inactive_tab = {
                bg_color = colour_table.background,
                fg_color = colour_table.foreground,
            },
            new_tab = {
                bg_color = colour_table.background,
                fg_color = colour_table.color_3,
            },
            new_tab_hover = {
                bg_color = colour_table.color_3,
                fg_color = colour_table.background,
            }
        }
    }
}
