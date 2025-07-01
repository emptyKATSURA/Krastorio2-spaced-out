require("prototypes.final-fixes.enforce-science-tier-separation")
require("prototypes.final-fixes.internal-turret-logic")
require("prototypes.final-fixes.biter-nests")

--sync all labs inputs
data.raw["lab"]["biolab"].inputs = data.raw["lab"]["lab"].inputs
data.raw["lab"]["kr-advanced-lab"].inputs = data.raw["lab"]["lab"].inputs
data.raw["lab"]["kr-singularity-lab"].inputs = data.raw["lab"]["lab"].inputs

local recycling = require("scripts.recycling")

-- Generating the recycle (reverse) recipes
for name, recipe in pairs(data.raw.recipe) do
  recycling.generate_recycling_recipe(recipe)
end

local generate_self_recycling_recipe = function(item)
  if item.auto_recycle == false then return end
  if item.parameter then return end

  if not data.raw.recipe[item.name .. "-recycling"] then
    if not string.find(item.name, "-barrel") then
      recycling.generate_self_recycling_recipe(item)
    end
  end
end

for type_name in pairs(defines.prototypes.item) do
  if data.raw[type_name] then
    for k, item in pairs(data.raw[type_name]) do
      generate_self_recycling_recipe(item)
    end
  end
end

data.raw.quality.normal.hidden = false

--The code below had been made by Johannes2070
--Fix: Ensure the recycler has enough result inventory slots to handle all recycling outputs.
local recycler = data.raw["furnace"]["recycler"]
if recycler then
  if recycler.result_inventory_size < 13 then
    recycler.result_inventory_size = 13
  end
end

--The code below had been made by Quezler
-- this file accomplishes the same as Krastroio 2's prototypes/final-fixes/steel-pipe-connectivity.lua file,
-- since there are only so many ways to write the same thing the code is earily similar,
-- therefore the contents of this file are best treated as falling under GNU LGPLv3.

local fluid_box_keys = {
  "fluid_box",
  "input_fluid_box",
  "output_fluid_box",
  "fuel_fluid_box",
  "oxidizer_fluid_box",
}

local function handle_fluidbox(fluidbox)
  if fluidbox == nil then return end

  for _, connection in pairs(fluidbox.pipe_connections) do
    if (connection.connection_type or "normal") == "normal" then
      local categories = connection.connection_category or { "default" }
      if #categories == 1 and categories[1] == "default" then
        categories[#categories + 1] = "kr-steel-pipe"
        connection.connection_category = categories
      end
    end
  end
end

local function handle_prototype(prototype)
  for _, fluid_box_key in pairs(fluid_box_keys) do
    handle_fluidbox(prototype[fluid_box_key])
  end
  for _, fluid_box in pairs(prototype.fluid_boxes or {}) do
    handle_fluidbox(fluid_box)
  end
  if prototype.energy_source and prototype.energy_source.type == "fluid" then
    handle_fluidbox(prototype.energy_source.fluid_box)
  end
end

for entity_type in pairs(defines.prototypes["entity"]) do
  for _, prototype in pairs(data.raw[entity_type] or {}) do
    if not names_ignored_by_steel_pipes[prototype.name] then
      handle_prototype(prototype)
    end
  end
end


