-- Copyright (c) 2025 GeekieChen
-- 此项目遵循 MIT 许可证，详见 LICENSE 文件。
local functions = require("prototypes/data/functions")

-- 注册科技
data:extend({
    -- 注册 colorful-stone-bricks
    {
        type = "technology",
        name = "colorful-stone-bricks",
        icon = "__base__/graphics/icons/stone-brick.png",
        prerequisites = {},
        research_trigger = {
            type = "craft-item",
            item = "stone-brick",
            count = 50
        },
        effects = {},
        order = "a"
    }, -- 注册 colorful-stone-bricks
    {
        type = "technology",
        name = "colorful-concretes",
        icon = "__base__/graphics/icons/concrete.png",
        prerequisites = {},
        research_trigger = {type = "craft-item", item = "concrete", count = 50},
        effects = {},
        order = "a"
    }
})

for h = -20, 340, 20 do
    local _, _, _, color_name = functions.hsv_to_rgb(h, 1, 1)

    table.insert(data.raw.technology["colorful-stone-bricks"].effects, {
        type = "unlock-recipe",
        recipe = color_name .. "-stone-brick"
    })
    table.insert(data.raw.technology["colorful-concretes"].effects, {
        type = "unlock-recipe",
        recipe = color_name .. "-concrete"
    })
end
