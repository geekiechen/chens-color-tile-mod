-- Copyright (c) 2025 GeekieChen
-- 此项目遵循 MIT 许可证，详见 LICENSE 文件。
local functions = require("prototypes/data/functions")

for h = -20, 340, 20 do
    local r, g, b, color_name = functions.hsv_to_rgb(h, 1, 1)

    -- 注册地格
    -- 注册 color-stone-brick
    if data.raw.tile["stone-path"] then
        local color_stone_brick_tile = table.deepcopy(
                                           data.raw.tile["stone-path"])
        local color_stone_brick_tile_name = color_name .. "-stone-brick"
        local color_stone_brick_tile_path =
            color_stone_brick_tile_name .. "-path"

        color_stone_brick_tile.name = color_stone_brick_tile_path
        color_stone_brick_tile.subgroup = "color-stone-bricks"
        color_stone_brick_tile.order = color_stone_brick_tile.order .. "-" ..
                                           string.format("%02d", math.floor(
                                                             (h + 20) / 20))

        if settings.startup["enable-return-normal-tile-when-mined"].value then
            color_stone_brick_tile.minable = {
                mining_time = 0.1,
                result = "stone-brick"
            }
        else
            color_stone_brick_tile.minable = {
                mining_time = 0.1,
                result = color_stone_brick_tile_name
            }
        end

        color_stone_brick_tile.map_color = {r = r, g = g, b = b}
        color_stone_brick_tile.tint = {r = r, g = g, b = b}

        data:extend({color_stone_brick_tile})
    end

    -- 注册 color-concrete
    if data.raw.tile["concrete"] then
        local color_concrete_tile = table.deepcopy(data.raw.tile["concrete"])
        local color_concrete_tile_name = color_name .. "-concrete"
        local color_concrete_tile_path =
            color_concrete_tile_name .. "-path"

        color_concrete_tile.name = color_concrete_tile_path
        color_concrete_tile.subgroup = "color-concretes"
        color_concrete_tile.order = color_concrete_tile.order .. "-" ..
                                           string.format("%02d", math.floor(
                                                             (h + 20) / 20))

        if settings.startup["enable-return-normal-tile-when-mined"].value then
            color_concrete_tile.minable = {
                mining_time = 0.1,
                result = "concrete"
            }
        else
            color_concrete_tile.minable = {
                mining_time = 0.1,
                result = color_concrete_tile_name
            }
        end

        color_concrete_tile.map_color = {r = r, g = g, b = b}
        color_concrete_tile.tint = {r = r, g = g, b = b}

        data:extend({color_concrete_tile})
    end
end
