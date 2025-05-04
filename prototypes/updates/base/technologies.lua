local data_util = require("data-util")

data_util.add_prerequisite("advanced-circuit", "kr-silicon-processing")
data_util.add_prerequisite("atomic-bomb", "kr-military-5")
data_util.add_prerequisite("automation", "kr-automation-core")
data_util.add_prerequisite("automation-science-pack", "kr-laboratory")
data_util.add_prerequisite("automobilism", "kr-fuel")
data_util.add_prerequisite("battery-equipment", "modular-armor")
data_util.add_prerequisite("efficiency-module-2", "chemical-science-pack")
data_util.add_prerequisite("efficiency-module-3", "processing-unit")
data_util.add_prerequisite("electronics", "kr-automation-core")
data_util.add_prerequisite("fast-inserter", "logistics")
data_util.add_prerequisite("fast-inserter", "steel-processing")
data_util.add_prerequisite("fluid-handling", "steam-power")
data_util.add_prerequisite("gate", "logistic-science-pack")
data_util.add_prerequisite("heavy-armor", "kr-light-armor")
data_util.add_prerequisite("kr-advanced-tech-card", "kr-lithium-sulfur-battery")
data_util.add_prerequisite("kr-iron-pickaxe", "kr-automation-core")
data_util.add_prerequisite("kr-matter-tech-card", "kr-lithium-processing")
data_util.add_prerequisite("kr-railgun-turret", "gun-turret")
data_util.add_prerequisite("lamp", "kr-stone-processing")
data_util.add_prerequisite("logistics-2", "steel-processing")
data_util.add_prerequisite("military", "electronics")
data_util.add_prerequisite("military-science-pack", "advanced-circuit")
data_util.add_prerequisite("modular-armor", "military-2")
data_util.add_prerequisite("oil-processing", "kr-fluids-chemistry")
data_util.add_prerequisite("physical-projectile-damage-1", "automation-science-pack")
data_util.add_prerequisite("production-science-pack", "kr-advanced-lab")
data_util.add_prerequisite("production-science-pack", "kr-research-server")
data_util.add_prerequisite("production-science-pack", "uranium-processing")
data_util.add_prerequisite("productivity-module-2", "chemical-science-pack")
data_util.add_prerequisite("productivity-module-3", "processing-unit")
data_util.add_prerequisite("rocket-fuel", "kr-fuel")
data_util.add_prerequisite("solar-energy", "kr-silicon-processing")
data_util.add_prerequisite("speed-module-2", "chemical-science-pack")
data_util.add_prerequisite("speed-module-3", "processing-unit")
data_util.add_prerequisite("spidertron", "kr-ai-core")
data_util.add_prerequisite("steam-power", "kr-automation-core")
data_util.add_prerequisite("steel-axe", "kr-iron-pickaxe")
data_util.add_prerequisite("stone-wall", "military")
data_util.add_prerequisite("utility-science-pack", "kr-advanced-lab")
data_util.add_prerequisite("utility-science-pack", "kr-research-server")
data_util.add_prerequisite("utility-science-pack", "rocket-fuel")
data_util.add_prerequisite("weapon-shooting-speed-1", "automation-science-pack")

data_util.remove_prerequisite("atomic-bomb", "military-4")
data_util.remove_prerequisite("automation-2", "automation")
data_util.remove_prerequisite("automation", "automation-science-pack")
data_util.remove_prerequisite("automation-science-pack", "steam-power")
data_util.remove_prerequisite("automobilism", "engine")
data_util.remove_prerequisite("engine", "steel-processing")
data_util.remove_prerequisite("fast-inserter", "automation-science-pack")
data_util.remove_prerequisite("fission-reactor-equipment", "utility-science-pack")
data_util.remove_prerequisite("fluid-handling", "automation-2")
data_util.remove_prerequisite("gate", "military-2")
data_util.remove_prerequisite("heavy-armor", "military")
data_util.remove_prerequisite("rocket-silo", "concrete")
data_util.remove_prerequisite("rocket-silo", "rocket-fuel")
data_util.remove_prerequisite("solar-energy", "logistic-science-pack")
data_util.remove_prerequisite("solar-energy", "steel-processing")

data_util.remove_research_unit_ingredient("fission-reactor-equipment", "utility-science-pack")

data_util.add_recipe_unlock("advanced-circuit", "kr-electronic-components")
data_util.add_recipe_unlock("atomic-bomb", "kr-nuclear-artillery-shell")
data_util.add_recipe_unlock("automation-science-pack", "kr-blank-tech-card")
--data_util.add_recipe_unlock("battery-equipment", "kr-big-battery-equipment")
data_util.add_recipe_unlock("battery-equipment", "kr-small-portable-generator-equipment")
--data_util.add_recipe_unlock("battery-mk2-equipment", "kr-big-battery-mk2-equipment")
--data_util.add_recipe_unlock("coal-liquefaction", "kr-coal-filtration")
data_util.add_recipe_unlock("coal-liquefaction", "kr-coke-liquefaction")
data_util.add_recipe_unlock("electric-engine", "kr-additional-engine-equipment")
data_util.add_recipe_unlock(kr_optimization_tech_card_name, "kr-space-research-data")
data_util.add_recipe_unlock("landfill", "kr-landfill-with-sand")
data_util.add_recipe_unlock("logistics", "long-handed-inserter")
data_util.add_recipe_unlock("military-science-pack", "kr-biter-research-data")
data_util.add_recipe_unlock("military", "slowdown-capsule")
data_util.add_recipe_unlock("personal-roboport-equipment", "kr-vehicle-roboport-equipment")
data_util.add_recipe_unlock("rocket-fuel", "kr-rocket-fuel-with-ammonia")
data_util.add_recipe_unlock("rocket-fuel", "kr-rocket-fuel-with-hydrogen-chloride")
data_util.add_recipe_unlock("solar-panel-equipment", "kr-big-solar-panel-equipment")
data_util.add_recipe_unlock("steel-processing", "kr-coke")
data_util.add_recipe_unlock("steel-processing", "kr-coke-carbon")
data_util.add_recipe_unlock("steel-processing", "kr-steel-beam")
data_util.add_recipe_unlock("steel-processing", "kr-steel-gear-wheel")
data_util.add_recipe_unlock("foundry", "molten-enriched-copper")
data_util.add_recipe_unlock("foundry", "molten-enriched-iron")
data_util.add_recipe_unlock("tungsten-carbide", "kr-carbide-processing-circuit")
data_util.add_recipe_unlock("turbo-transport-belt", "kr-advanced-loader")

if settings.startup["kr-loaders"].value then
  data_util.add_recipe_unlock("logistics", "kr-loader")
  data_util.add_recipe_unlock("logistics-2", "kr-fast-loader")
  data_util.add_recipe_unlock("logistics-3", "kr-express-loader")
end

data_util.remove_recipe_unlock("automation", "long-handed-inserter")
data_util.remove_recipe_unlock("electronics", "copper-cable")
data_util.remove_recipe_unlock("electronics", "lab")
data_util.remove_recipe_unlock("electronics", "small-electric-pole")
data_util.remove_recipe_unlock("kovarex-enrichment-process", "nuclear-fuel")
data_util.remove_recipe_unlock("military-3", "slowdown-capsule")
data_util.remove_recipe_unlock("oil-processing", "chemical-plant")

data.raw.technology["automation-science-pack"].icon = "__Krastorio2Assets__/technologies/automation-tech-card.png"

data.raw.technology["automation"].unit = nil
data.raw.technology["automation"].research_trigger = {
      type = "craft-item",
      item = "kr-automation-core",
      count = 10
    }

data.raw.technology["artillery"].unit.count = 1000
data.raw.technology["atomic-bomb"].unit.count = 1500
data.raw.technology["automation-3"].unit.count = 350
data.raw.technology["coal-liquefaction"].unit.count = 150
data.raw.technology["destroyer"].unit.count = 350
data.raw.technology["discharge-defense-equipment"].unit.count = 300
data.raw.technology["effect-transmission"].unit.count = 500
data.raw.technology["fission-reactor-equipment"].unit.count = 350
data.raw.technology["kovarex-enrichment-process"].unit.count = 500
data.raw.technology["laser"].unit.count = 200
data.raw.technology["logistic-system"].unit.count = 250
data.raw.technology["low-density-structure"].unit.count = 500
data.raw.technology["military-4"].unit.count = 350
data.raw.technology["nuclear-fuel-reprocessing"].unit.count = 250
data.raw.technology["nuclear-power"].unit.count = 500
data.raw.technology["production-science-pack"].unit.count = 250
data.raw.technology["uranium-ammo"].unit.count = 300
data.raw.technology["utility-science-pack"].unit.count = 250

data.raw.technology["electric-mining-drill"].unit.count = 20
data.raw.technology["electric-mining-drill"].unit.time = 30

data.raw.technology["artillery-shell-range-1"].max_level = 2
data.raw.technology["artillery-shell-range-1"].unit.count_formula = "L^2*3500"
data.raw.technology["artillery-shell-speed-1"].max_level = 2
data.raw.technology["artillery-shell-speed-1"].unit.count_formula = "L^2*3500"

data.raw.technology["follower-robot-count-5"].unit.count_formula = "((L-6)^2)*5000"
data.raw.technology["follower-robot-count-5"].max_level = nil

data.raw.technology["laser-weapons-damage-7"].max_level = 10
data.raw.technology["laser-weapons-damage-7"].unit.count_formula = "((L-6)^2)*3000"
data.raw.technology["laser-weapons-damage-7"].unit.count = nil

data.raw.technology["physical-projectile-damage-7"].max_level = 10
data.raw.technology["physical-projectile-damage-7"].unit.count_formula = "((L-6)^2)*3000"

data.raw.technology["refined-flammables-7"].max_level = 10
data.raw.technology["refined-flammables-7"].unit.count_formula = "((L-6)^2)*3000"

data.raw.technology["stronger-explosives-7"].max_level = 10
data.raw.technology["stronger-explosives-7"].unit.count_formula = "((L-6)^2)*3000"

data_util.set_icons(
  data.raw.technology["fission-reactor-equipment"],
  util.technology_icon_constant_equipment("__Krastorio2Assets__/technologies/fission-reactor-equipment.png")
)

data_util.set_icons(
  data.raw.technology["steel-axe"],
  util.technology_icon_constant_mining("__Krastorio2Assets__/technologies/steel-pickaxe.png")
)

data.raw.technology["personal-laser-defense-equipment"].localised_name = {
  "technology-name.kr-personal-laser-defense-mk1-equipment",
}

data.raw.technology["logistic-science-pack"].localised_name = { "item-name.logistic-tech-card" }
data.raw.technology["military-science-pack"].localised_name = { "item-name.military-tech-card" }
data.raw.technology["chemical-science-pack"].localised_name = { "item-name.chemical-tech-card" }
data.raw.technology["production-science-pack"].localised_name = { "item-name.production-tech-card" }
data.raw.technology["utility-science-pack"].localised_name = { "item-name.utility-tech-card" }
data.raw.technology[kr_optimization_tech_card_name].localised_name = { "item-name.optimization-tech-card" }
data.raw.technology[kr_optimization_tech_card_name].localised_description =
  { "technology-description.optimization-tech-card" }

-- stylua: ignore start
data_util.set_icons(data.raw.technology["battery-mk2-equipment"], util.technology_icon_constant_equipment("__Krastorio2Assets__/technologies/battery-mk2-equipment.png", 256))
data_util.set_icon(data.raw.technology["chemical-science-pack"], "__Krastorio2Assets__/technologies/chemical-tech-card.png", 256)
data_util.set_icon(data.raw.technology["coal-liquefaction"], "__Krastorio2Assets__/technologies/coal-liquefaction.png", 256)
data_util.set_icons(data.raw.technology["energy-shield-equipment"], util.technology_icon_constant_equipment("__Krastorio2Assets__/technologies/energy-shield-mk1-equipment.png", 256))
data_util.set_icons(data.raw.technology["energy-shield-mk2-equipment"], util.technology_icon_constant_equipment("__Krastorio2Assets__/technologies/energy-shield-mk2-equipment.png", 256))
data_util.set_icon(data.raw.technology["heavy-armor"], "__Krastorio2Assets__/technologies/heavy-armor.png", 256)
data_util.set_icon(data.raw.technology[kr_optimization_tech_card_name], "__Krastorio2Assets__/technologies/optimization-tech-card.png", 256)
data_util.set_icon(data.raw.technology["logistics-2"], "__Krastorio2Assets__/technologies/logistics-2.png", 256)
data_util.set_icon(data.raw.technology["logistics-3"], "__Krastorio2Assets__/technologies/logistics-3.png", 256)
data_util.set_icon(data.raw.technology["logistic-science-pack"], "__Krastorio2Assets__/technologies/logistic-tech-card.png", 256)
data_util.set_icon(data.raw.technology["logistics"], "__Krastorio2Assets__/technologies/logistics-1.png", 256)
data_util.set_icon(data.raw.technology["military-science-pack"], "__Krastorio2Assets__/technologies/military-tech-card.png", 256)
data_util.set_icons(data.raw.technology["night-vision-equipment"], util.technology_icon_constant_equipment("__Krastorio2Assets__/technologies/night-vision-equipment.png", 256))
data_util.set_icon(data.raw.technology["oil-processing"], "__Krastorio2Assets__/technologies/oil-gathering.png", 256)
data_util.set_icons(data.raw.technology["personal-laser-defense-equipment"], util.technology_icon_constant_equipment("__Krastorio2Assets__/technologies/personal-laser-defense-mk1-equipments.png", 256))
data_util.set_icon(data.raw.technology["production-science-pack"], "__Krastorio2Assets__/technologies/production-tech-card.png", 256)
data_util.set_icon(data.raw.technology["steel-processing"], "__Krastorio2Assets__/technologies/steel-processing.png", 256)
data_util.set_icon(data.raw.technology["utility-science-pack"], "__Krastorio2Assets__/technologies/utility-tech-card.png", 256)
-- stylua: ignore end

data:extend({
  {
    type = "technology",
    name = "worker-robots-speed-7",
    icons = {
      { icon = "__base__/graphics/technology/worker-robots-speed.png", icon_size = 256 },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-movement-speed.png",
        icon_size = 128,
        shift = { 50, 50 },
        scale = 0.5,
      },
    },
    icon_size = 256,
    order = "c-k-f-w",
    upgrade = true,
    max_level = 8,
    unit = {
      time = 60,
      count_formula = "((L-6)^2)*5000",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
      },
    },
    prerequisites = { "worker-robots-speed-6", "kr-advanced-tech-card" },
    effects = {
      { type = "worker-robot-speed", modifier = 0.60 },
    },
  },

  {
    type = "technology",
    name = "worker-robots-speed-9",
    icons = {
      { icon = "__base__/graphics/technology/worker-robots-speed.png", icon_size = 256 },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-movement-speed.png",
        icon_size = 128,
        shift = { 50, 50 },
        scale = 0.5,
      },
    },
    icon_size = 256,
    order = "c-k-f-z",
    upgrade = true,
    max_level = "infinite",
    unit = {
      time = 60,
      count_formula = "((L-8)^2)*5000",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
      },
    },
    prerequisites = { "worker-robots-speed-7", "kr-singularity-tech-card" },
    effects = {
      { type = "worker-robot-speed", modifier = 0.375 },
    },
  },
  {
    type = "technology",
    name = "follower-robot-count-6",
    icons = {
      { icon = "__base__/graphics/technology/follower-robots.png", icon_size = 256 },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-count.png",
        icon_size = 128,
        shift = { 50, 50 },
      },
    },
    icon_size = 256,
    order = "c-k-f-w",
    upgrade = true,
    max_level = 8,
    unit = {
      time = 60,
      count_formula = "((L-5)^2)*5000",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
      },
    },
    prerequisites = { "follower-robot-count-5", "kr-advanced-tech-card" },
    effects = {
      { type = "maximum-following-robots-count", modifier = 15 },
    },
  },
  {
    type = "technology",
    name = "follower-robot-count-9",
    icons = {
      { icon = "__base__/graphics/technology/follower-robots.png", icon_size = 256 },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-count.png",
        icon_size = 128,
        shift = { 50, 50 },
      },
    },
    icon_size = 256,
    order = "c-k-f-z",
    upgrade = true,
    max_level = "infinite",
    unit = {
      time = 60,
      count_formula = "((L-8)^2)*5000",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
      },
    },
    prerequisites = { "follower-robot-count-6", "kr-singularity-tech-card" },
    effects = {
      { type = "maximum-following-robots-count", modifier = 15 },
    },
  },
  {
    type = "technology",
    name = "physical-projectile-damage-11",
    icons = {
      { icon = "__base__/graphics/technology/physical-projectile-damage-2.png", icon_size = 256 },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-damage.png",
        icon_size = 128,
        shift = { 50, 50 },
        scale = 0.5,
      },
    },
    icon_size = 256,
    order = "c-k-f-w",
    upgrade = true,
    max_level = 15,
    unit = {
      time = 60,
      count_formula = "((L-10)^2)*3000",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
      },
    },
    prerequisites = { "physical-projectile-damage-7", "kr-advanced-tech-card" },
    effects = {
      { type = "ammo-damage", ammo_category = "bullet", modifier = 0.3 },
      { type = "turret-attack", turret_id = "gun-turret", modifier = 0.3 },
      { type = "ammo-damage", ammo_category = "shotgun-shell", modifier = 0.4 },
      { type = "ammo-damage", ammo_category = "cannon-shell", modifier = 1 },
    },
  },
  {
    type = "technology",
    name = "physical-projectile-damage-16",
    icons = {
      { icon = "__base__/graphics/technology/physical-projectile-damage-2.png", icon_size = 256 },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-damage.png",
        icon_size = 128,
        shift = { 50, 50 },
        scale = 0.5,
      },
    },
    icon_size = 256,
    order = "c-k-f-z",
    upgrade = true,
    max_level = "infinite",
    unit = {
      time = 60,
      count_formula = "((L-15)^2)*3000",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
      },
    },
    prerequisites = { "physical-projectile-damage-11", "kr-singularity-tech-card" },
    effects = {
      { type = "ammo-damage", ammo_category = "bullet", modifier = 0.3 },
      { type = "turret-attack", turret_id = "gun-turret", modifier = 0.3 },
      { type = "ammo-damage", ammo_category = "shotgun-shell", modifier = 0.4 },
      { type = "ammo-damage", ammo_category = "cannon-shell", modifier = 1 },
    },
  },
  {
    type = "technology",
    name = "stronger-explosives-11",
    icons = {
      { icon = "__base__/graphics/technology/stronger-explosives-3.png", icon_size = 256 },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-damage.png",
        icon_size = 128,
        shift = { 50, 50 },
        scale = 0.5,
      },
    },
    icon_size = 256,
    order = "c-k-f-w",
    upgrade = true,
    max_level = 15,
    unit = {
      time = 60,
      count_formula = "((L-10)^2)*3000",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
      },
    },
    prerequisites = { "stronger-explosives-7", "kr-advanced-tech-card" },
    effects = {
      { type = "ammo-damage", ammo_category = "rocket", modifier = 0.5 },
      { type = "ammo-damage", ammo_category = "grenade", modifier = 0.2 },
      { type = "ammo-damage", ammo_category = "landmine", modifier = 0.2 },
    },
  },
  {
    type = "technology",
    name = "stronger-explosives-16",
    icons = {
      { icon = "__base__/graphics/technology/stronger-explosives-3.png", icon_size = 256 },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-damage.png",
        icon_size = 128,
        shift = { 50, 50 },
        scale = 0.5,
      },
    },
    icon_size = 256,
    order = "c-k-f-z",
    upgrade = true,
    max_level = 18,
    unit = {
      time = 60,
      count_formula = "((L-15)^2)*3000",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
      },
    },
    prerequisites = { "stronger-explosives-11", "kr-singularity-tech-card" },
    effects = {
      { type = "ammo-damage", ammo_category = "rocket", modifier = 0.5 },
      { type = "ammo-damage", ammo_category = "grenade", modifier = 0.2 },
      { type = "ammo-damage", ammo_category = "landmine", modifier = 0.2 },
    },
  },
  {
    type = "technology",
    name = "refined-flammables-11",
    icons = {
      { icon = "__base__/graphics/technology/refined-flammables.png", icon_size = 256 },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-damage.png",
        icon_size = 128,
        shift = { 50, 50 },
        scale = 0.5,
      },
    },
    icon_size = 256,
    order = "c-k-f-w",
    upgrade = true,
    max_level = 15,
    unit = {
      time = 60,
      count_formula = "((L-10)^2)*3000",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
      },
    },
    prerequisites = { "refined-flammables-7", "kr-advanced-tech-card" },
    effects = {
      { type = "ammo-damage", ammo_category = "flamethrower", modifier = 0.2 },
      { type = "turret-attack", turret_id = "flamethrower-turret", modifier = 0.2 },
    },
  },
  {
    type = "technology",
    name = "refined-flammables-16",
    icons = {
      { icon = "__base__/graphics/technology/refined-flammables.png", icon_size = 256 },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-damage.png",
        icon_size = 128,
        shift = { 50, 50 },
        scale = 0.5,
      },
    },
    icon_size = 256,
    order = "c-k-f-z",
    upgrade = true,
    max_level = "infinite",
    unit = {
      time = 60,
      count_formula = "((L-15)^2)*3000",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
      },
    },
    prerequisites = { "refined-flammables-11", "kr-singularity-tech-card" },
    effects = {
      { type = "ammo-damage", ammo_category = "flamethrower", modifier = 0.2 },
      { type = "turret-attack", turret_id = "flamethrower-turret", modifier = 0.2 },
    },
  },
  {
    type = "technology",
    name = "laser-weapons-damage-11",
    icons = {
      { icon = "__base__/graphics/technology/laser-weapons-damage.png", icon_size = 256 },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-damage.png",
        icon_size = 128,
        shift = { 50, 50 },
      },
    },
    icon_size = 256,
    order = "c-k-f-w",
    upgrade = true,
    max_level = 15,
    unit = {
      time = 60,
      count_formula = "((L-10)^2)*3000",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
      },
    },
    prerequisites = { "laser-weapons-damage-7", "kr-advanced-tech-card" },
    effects = {
      { type = "ammo-damage", ammo_category = "laser", modifier = 1 },
    },
  },
  {
    type = "technology",
    name = "laser-weapons-damage-16",
    icons = {
      { icon = "__base__/graphics/technology/laser-weapons-damage.png", icon_size = 256 },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-damage.png",
        icon_size = 128,
        shift = { 50, 50 },
      },
    },
    icon_size = 256,
    order = "c-k-f-z",
    upgrade = true,
    max_level = "infinite",
    unit = {
      time = 60,
      count_formula = "((L-15)^2)*3000",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
      },
    },
    prerequisites = { "laser-weapons-damage-11", "kr-singularity-tech-card" },
    effects = {
      { type = "ammo-damage", ammo_category = "laser", modifier = 1 },
    },
  },
  {
    type = "technology",
    name = "artillery-shell-range-3",
    icons = {
      { icon = "__base__/graphics/technology/artillery-range.png", icon_size = 256 },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-range.png",
        icon_size = 128,
        shift = { 50, 50 },
        scale = 0.5,
      },
    },
    icon_size = 256,
    order = "c-k-f-w",
    upgrade = true,
    max_level = 4,
    unit = {
      time = 60,
      count_formula = "((L-2)^2)*3500",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
      },
    },
    prerequisites = { "artillery-shell-range-1", "kr-advanced-tech-card" },
    effects = {
      { type = "artillery-range", modifier = 0.3 },
    },
  },
  {
    type = "technology",
    name = "artillery-shell-range-5",
    icons = {
      { icon = "__base__/graphics/technology/artillery-range.png", icon_size = 256 },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-range.png",
        icon_size = 128,
        shift = { 50, 50 },
        scale = 0.5,
      },
    },
    icon_size = 256,
    order = "c-k-f-z",
    upgrade = true,
    max_level = "infinite",
    unit = {
      time = 60,
      count_formula = "((L-4)^2)*3500",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
      },
    },
    prerequisites = { "artillery-shell-range-3", "kr-singularity-tech-card" },
    effects = {
      { type = "artillery-range", modifier = 0.2 },
    },
  },
  {
    type = "technology",
    name = "artillery-shell-speed-3",
    icons = {
      { icon = "__base__/graphics/technology/artillery-speed.png", icon_size = 256 },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-speed.png",
        icon_size = 128,
        shift = { 50, 50 },
        scale = 0.5,
      },
    },
    icon_size = 256,
    order = "c-k-f-w",
    upgrade = true,
    max_level = 4,
    unit = {
      time = 60,
      count_formula = "((L-2)^2)*3500",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
      },
    },
    prerequisites = { "artillery-shell-speed-1", "kr-advanced-tech-card" },
    effects = {
      { type = "gun-speed", ammo_category = "artillery-shell", modifier = 0.1 },
    },
  },
  {
    type = "technology",
    name = "artillery-shell-speed-5",
    icons = {
      { icon = "__base__/graphics/technology/artillery-speed.png", icon_size = 256 },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-speed.png",
        icon_size = 128,
        shift = { 50, 50 },
        scale = 0.5,
      },
    },
    icon_size = 256,
    order = "c-k-f-z",
    upgrade = true,
    max_level = "infinite",
    unit = {
      time = 60,
      count_formula = "((L-4)^2)*3500",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
      },
    },
    prerequisites = { "artillery-shell-speed-3", "kr-singularity-tech-card" },
    effects = {
      { type = "gun-speed", ammo_category = "artillery-shell", modifier = 0.1 },
    },
  },
})
