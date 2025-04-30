-- Copyright (c) 2025 GeekieChen
-- 此项目遵循 MIT 许可证，详见 LICENSE 文件。
-- 修复模组的问题
-- 修复 chens-py-sea-block-mod-core 的问题
if mods["chens-py-sea-block-mod-core"] then
    -- 修复科技的问题
    -- 修复 colorful-stone-bricks 的问题
    if data.raw.technology["colorful-stone-bricks"] and
        data.raw.technology["basic-resources"] then
        data.raw.technology["colorful-stone-bricks"].prerequisites = {
            "basic-resources"
        }
    end
end

