-- Copyright (c) 2025 GeekieChen
-- 此项目遵循 MIT 许可证，详见 LICENSE 文件。
function hsv_to_rgb(h, s, v)
    h = h % 360

    local c = v * s
    local x = c * (1 - math.abs((h / 60) % 2 - 1))
    local m = v - c

    local r_, g_, b_

    if h >= 0 and h < 60 then
        r_, g_, b_ = c, x, 0
    elseif h >= 60 and h < 120 then
        r_, g_, b_ = x, c, 0
    elseif h >= 120 and h < 180 then
        r_, g_, b_ = 0, c, x
    elseif h >= 180 and h < 240 then
        r_, g_, b_ = 0, x, c
    elseif h >= 240 and h < 300 then
        r_, g_, b_ = x, 0, c
    else
        r_, g_, b_ = c, 0, x
    end

    local r = math.floor((r_ + m) * 255)
    local g = math.floor((g_ + m) * 255)
    local b = math.floor((b_ + m) * 255)
    local color_name

    if h == 0 then
        color_name = "red"
    elseif h == 20 then
        color_name = "scarlet"
    elseif h == 40 then
        color_name = "orange"
    elseif h == 60 then
        color_name = "yellow"
    elseif h == 80 then
        color_name = "lime"
    elseif h == 100 then
        color_name = "chartreuse"
    elseif h == 120 then
        color_name = "green"
    elseif h == 140 then
        color_name = "spring"
    elseif h == 160 then
        color_name = "teal"
    elseif h == 180 then
        color_name = "cyan"
    elseif h == 200 then
        color_name = "azure"
    elseif h == 220 then
        color_name = "cerulean"
    elseif h == 240 then
        color_name = "blue"
    elseif h == 260 then
        color_name = "indigo"
    elseif h == 280 then
        color_name = "violet"
    elseif h == 300 then
        color_name = "purple"
    elseif h == 320 then
        color_name = "magenta"
    elseif h == 340 then
        color_name = "rose"
    end

    return r, g, b, color_name
end

return {hsv_to_rgb = hsv_to_rgb}
