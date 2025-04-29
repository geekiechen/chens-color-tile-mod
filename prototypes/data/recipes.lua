-- Copyright (c) 2025 JackieChen
-- 此项目遵循 MIT 许可证，详见 LICENSE 文件。
local functions = require("prototypes/data/functions")

for h = -20, 340, 20 do
    local _, _, _, color_name = functions.hsv_to_rgb(h, 1, 1)

    -- 注册配方
    -- 注册 color-stone-brick
    if data.raw.recipe["stone-brick"] then
        local color_stone_brick_recipe = table.deepcopy(
                                             data.raw.recipe["stone-brick"])

        color_stone_brick_recipe.name = color_name .. "-stone-brick"
        color_stone_brick_recipe.category = "crafting"
        color_stone_brick_recipe.energy_required = 0.1
        color_stone_brick_recipe.enabled = false
        color_stone_brick_recipe.ingredients = {
            {type = "item", name = "stone-brick", amount = 1}
        }

        color_stone_brick_recipe.results = {
            {type = "item", name = color_name .. "-stone-brick", amount = 1}
        }
        color_stone_brick_recipe.main_product = color_name .. "-stone-brick"

        data:extend({color_stone_brick_recipe})
    end
end
