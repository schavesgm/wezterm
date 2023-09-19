local colour_table = {
    background         = "#1F1F28",
    lighter_background = "#2A2A37",
    foreground         = "#DCD7BA",

    -- Black
    color_0            = "#16161D",
    color_8            = "#2A2A37",
    -- # Red
    color_1            = "#C34043",
    color_9            = "#E82424",

    --  Green
    color_2            = "#76946A",
    color_10           = "#98BB6C",

    -- Yellow
    color_3            = "#DCA561",
    color_11           = "#FF9E3B",

    -- Blue
    color_4            = "#7E9CD8",
    color_12           = "#7FB4CA",

    -- Magenta
    color_5            = "#938AA9",
    color_13           = "#957FB8",

    -- Cyan
    color_6            = "#7AA89F",
    color_14           = "#A3D4D5",

    -- White
    color_7            = "#DCD7BA",
    color_15           = "#C8C093",
}



return {
    table = colour_table,
    scheme = {
        foreground = colour_table.foreground,
        background = colour_table.background,
        cursor_bg = colour_table.color_15,
        cursor_fg = colour_table.color_15,
        cursor_border = colour_table.color_15,
        selection_fg = colour_table.color_15,
        selection_bg = colour_table.lighter_background,
        scrollbar_thumb = colour_table.color_0,
        split = colour_table.color_0,
        ansi = {
            colour_table.color_0, colour_table.color_1,
            colour_table.color_2, colour_table.color_3,
            colour_table.color_4, colour_table.color_5,
            colour_table.color_6, colour_table.color_7,
        },
        brights = {
            colour_table.color_8, colour_table.color_9,
            colour_table.color_10, colour_table.color_11,
            colour_table.color_12, colour_table.color_13,
            colour_table.color_14, colour_table.color_15,
        },
    }
}
