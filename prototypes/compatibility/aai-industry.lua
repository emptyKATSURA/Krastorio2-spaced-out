if not mods["aai-industry"] then
  data.raw["offshore-pump"]["offshore-pump"].energy_usage = "19kW"
  data.raw["offshore-pump"]["offshore-pump"].energy_source = {
    type = "electric",
    usage_priority = "secondary-input",
    drain = "1kW",
    }
  return
end

local data_util = require("data-util")

data_util.remove_ingredient("repair-pack", "stone")
data_util.remove_ingredient("repair-pack", "iron-plate")
data_util.remove_ingredient("repair-pack", "copper-plate")
data_util.remove_ingredient("assembling-machine-3", "advanced-circuit")
data_util.remove_ingredient("electronic-circuit", "iron-plate")

data.raw.recipe["electronic-circuit"].energy_required = 0.5
data_util.add_or_replace_ingredient(
  "electronic-circuit",
  "copper-cable",
  { type = "item", name = "copper-cable", amount = 3 }
)
data.raw.recipe["electronic-circuit"].results = {
  { type = "item", name = "electronic-circuit", amount = 1 },
}

data_util.remove_prerequisite("electronics", "electricity")
data_util.remove_prerequisite("fluid-handling", "steam-power")
data_util.remove_prerequisite("automation-science-pack", "kr-laboratory")
data.raw.technology["kr-laboratory"] = nil
data_util.add_prerequisite("automation-science-pack", "electronics")

data.raw.technology["electronics"].unit = nil
data.raw.technology["electronics"].research_trigger = {
      type = "craft-item",
      item = "copper-plate",
      count = 50
    }

if  mods["bzcarbon"] then
  data_util.remove_prerequisite("automation-science-pack", "electronics")
end
