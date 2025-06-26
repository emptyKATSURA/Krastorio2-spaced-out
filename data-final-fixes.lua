require("prototypes.final-fixes.enforce-science-tier-separation")
require("prototypes.final-fixes.internal-turret-logic")
require("prototypes.final-fixes.steel-pipe-connectivity")
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

-- Create or fix scrap-recycling recipe for Factoriopedia visibility
if data.raw.item["scrap"] then
  -- First check if the recipe already exists
  if not data.raw.recipe["scrap-recycling"] then
    -- Create the recipe if it doesn't exist
    data:extend({
      {
        type = "recipe",
        name = "scrap-recycling",
        localised_name = {"recipe-name.recycling", {"item-name.scrap"}},
        category = "recycling",
        subgroup = "other",
        order = "z[scrap-recycling]",
        hidden = false,
        hidden_in_factoriopedia = false,
        hide_from_player_crafting = true,
        enabled = false,
        allow_decomposition = false,
        unlock_results = false,
        energy_required = 0.5 / 16,
        ingredients = {
          {type = "item", name = "scrap", amount = 1}
        },
        results = {
          {type = "item", name = "iron-gear-wheel",        amount = 1, probability = 0.20, show_details_in_recipe_tooltip = false},
          {type = "item", name = "electronic-circuit",     amount = 1, probability = 0.10, show_details_in_recipe_tooltip = false},
          {type = "item", name = "solid-fuel",             amount = 1, probability = 0.07, show_details_in_recipe_tooltip = false},
          {type = "item", name = "concrete",               amount = 1, probability = 0.06, show_details_in_recipe_tooltip = false},
          {type = "item", name = "ice",                    amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
          {type = "item", name = "steel-plate",            amount = 1, probability = 0.04, show_details_in_recipe_tooltip = false},
          {type = "item", name = "battery",                amount = 1, probability = 0.04, show_details_in_recipe_tooltip = false},
          {type = "item", name = "stone",                  amount = 1, probability = 0.04, show_details_in_recipe_tooltip = false},
          {type = "item", name = "advanced-circuit",       amount = 1, probability = 0.03, show_details_in_recipe_tooltip = false},
          {type = "item", name = "copper-cable",           amount = 1, probability = 0.03, show_details_in_recipe_tooltip = false},
          {type = "item", name = "processing-unit",        amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false},
          {type = "item", name = "low-density-structure",  amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
          {type = "item", name = "holmium-ore",            amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
        },
        icons = {
          {
            icon = "__quality__/graphics/icons/recycling.png",
            icon_size = 64
          },
          {
            icon = "__space-age__/graphics/icons/scrap.png",
            icon_size = 64,
            scale = 0.4
          },
          {
            icon = "__quality__/graphics/icons/recycling-top.png",
            icon_size = 64
          }
        }
      }
    })
  else
    -- If the recipe exists, ensure all properties are set correctly
    local recipe = data.raw.recipe["scrap-recycling"]
    recipe.hidden = false
    recipe.hidden_in_factoriopedia = false
    recipe.hide_from_player_crafting = true
    recipe.enabled = false
    recipe.category = "recycling"
    recipe.subgroup = "other"
    recipe.order = "z[scrap-recycling]"
    recipe.energy_required = 0.5 / 16
    recipe.allow_decomposition = false
    recipe.unlock_results = false
    recipe.localised_name = {"recipe-name.recycling", {"item-name.scrap"}}
    
    recipe.ingredients = {
      {type = "item", name = "scrap", amount = 1}
    }
    
    recipe.results = {
      {type = "item", name = "iron-gear-wheel",        amount = 1, probability = 0.20, show_details_in_recipe_tooltip = false},
      {type = "item", name = "electronic-circuit",     amount = 1, probability = 0.10, show_details_in_recipe_tooltip = false},
      {type = "item", name = "solid-fuel",             amount = 1, probability = 0.07, show_details_in_recipe_tooltip = false},
      {type = "item", name = "concrete",               amount = 1, probability = 0.06, show_details_in_recipe_tooltip = false},
      {type = "item", name = "ice",                    amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
      {type = "item", name = "steel-plate",            amount = 1, probability = 0.04, show_details_in_recipe_tooltip = false},
      {type = "item", name = "battery",                amount = 1, probability = 0.04, show_details_in_recipe_tooltip = false},
      {type = "item", name = "stone",                  amount = 1, probability = 0.04, show_details_in_recipe_tooltip = false},
      {type = "item", name = "advanced-circuit",       amount = 1, probability = 0.03, show_details_in_recipe_tooltip = false},
      {type = "item", name = "copper-cable",           amount = 1, probability = 0.03, show_details_in_recipe_tooltip = false},
      {type = "item", name = "processing-unit",        amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false},
      {type = "item", name = "low-density-structure",  amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
      {type = "item", name = "holmium-ore",            amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
    }
    
    recipe.icons = {
      {
        icon = "__quality__/graphics/icons/recycling.png",
        icon_size = 64
      },
      {
        icon = "__space-age__/graphics/icons/scrap.png",
        icon_size = 64,
        scale = 0.4
      },
      {
        icon = "__quality__/graphics/icons/recycling-top.png",
        icon_size = 64
      }
    }
  end
end

if settings.startup["kr-steel-pipes-need-pumps"].value then
  return
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


