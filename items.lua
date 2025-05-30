-- Copyright (c) 2025 JackieChen
-- 此项目遵循 MIT 许可证，详见 LICENSE 文件。
local functions = require("prototypes/data/functions")

for h = -20, 340, 20 do
    local r, g, b, color_name = functions.hsv_to_rgb(h, 1, 1)

    -- 注册物品
    -- 注册 color-stone-brick
    if data.raw.item["stone-brick"] then
        local color_stone_brick_item = table.deepcopy(
                                           data.raw.item["stone-brick"])
        local color_stone_brick_item_name =
            color_name .. "-" .. color_stone_brick_item.name
        local color_stone_brick_item_path =
            color_stone_brick_item_name .. "-path"

        color_stone_brick_item.name = color_stone_brick_item_name
        color_stone_brick_item.order = color_stone_brick_item.order .. "-" ..
                                           string.format("%02d", math.floor(
                                                             (h + 20) / 20))
        color_stone_brick_item.place_as_tile = {
            result = color_stone_brick_item_path,
            condition_size = 1,
            condition = {layers = {water_tile = true}}
        }

        if color_stone_brick_item.icon then
            color_stone_brick_item.icons = {
                {
                    icon = color_stone_brick_item.icon,
                    tint = {r = r, g = g, b = b}
                }
            }

            color_stone_brick_item.icon = nil
        end

        data:extend({color_stone_brick_item})
    end
end
