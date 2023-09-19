local wezterm = require("wezterm")
local default_font = wezterm.font_with_fallback {"Iosevka Nerd Font", "Ubuntu Mono"}

return {
    font = default_font,
    font_size = 18.0,
    command_palette_font_size = 18.0,
}
