if not mods["Moshine"] then
  return
end

local data_util = require("data-util")

--maybe it should replace sand with kr-sand instead of replacing mineable value?
data.raw.resource["multi-ore"].minable = {
    mining_particle = "iron-ore-particle",
    mining_time = 2,
    results = {
        { type = "item", name = "kr-sand", amount = 1, probability = 28 /100 },
        { type = "item", name = "neodymium", amount = 1020, probability = 0.003 /100 },
        { type = "item", name = "sulfur", amount = 1, probability = 6 /100 },
        { type = "item", name = "coal", amount = 1, probability = 12 /100 },
        { type = "item", name = "copper-ore", amount = 1, probability = 8 /100 },
    },
}

data_util.convert_ingredient("optical-cable","glass", "kr-glass" )
data_util.convert_ingredient("ai-trainer","glass", "kr-glass" )
data_util.convert_ingredient("3d-data-storage","glass", "kr-glass" )
data_util.convert_ingredient("concrete-from-molten-iron-and-sand","sand", "kr-sand" )
data_util.convert_ingredient("petroleum-from-sand-sulfur-steam-carbon","sand", "kr-sand" )
data_util.convert_ingredient("silicon","sand", "kr-sand" )

if not mods["aai-industry"] then
    data.raw.item["glass"].hidden = true
    data.raw.recipe["glass"].hidden = true
    data.raw.item["sand"].hidden = true
    data_util.remove_prerequisite("moshine-tech-data-extractor", "moshine-tech-glass")
end

data.raw.technology["moshine-tech-glass"] = nil
