local data_util = require("data-util")

data.raw["unit-spawner"]["biter-spawner"].max_health = 750
data.raw["unit-spawner"]["spitter-spawner"].max_health = 750

data.raw.corpse["spitter-spawner-corpse"].hidden_in_factoriopedia = false
data.raw.corpse["biter-spawner-corpse"].hidden_in_factoriopedia = false
data.raw.corpse["gleba-spawner-corpse"].hidden_in_factoriopedia = false

for _, spawner in pairs(data.raw["unit-spawner"]) do

  if not (spawner.corpse and data.raw.corpse[spawner.corpse]) then goto continue end
  local corpse = data.raw.corpse[spawner.corpse]

  corpse.minable = {
    mining_time = 1,
    results = { { type = "item", name = "kr-biomass", amount_min = 10, amount_max = 20 } },
  }
  corpse.selectable_in_game = true
  corpse.time_before_removed = 5 * minute
  corpse.mined_sound =
    { filename = "__Krastorio2Assets__/sounds/tiles/creep-deconstruction.ogg" }
  corpse.selection_priority = 45

  ::continue::
end
