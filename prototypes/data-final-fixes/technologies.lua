-- Copyright (c) 2025 GeekieChen
-- 此项目遵循 MIT 许可证，详见 LICENSE 文件。
-- 修复科技的问题
-- 修复 colorful-concretes 的问题
if data.raw.technology["colorful-concretes"] and data.raw.technology["concrete"] then
    data.raw.technology["colorful-concretes"].prerequisites = {"concrete"}
end
