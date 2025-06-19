if not kr_adjust_stack_sizes then
  return
end

local kr_stack_size_value = 200

-- Vanilla

data.raw.ammo["artillery-shell"].stack_size = 25
data.raw.capsule["cliff-explosives"].stack_size = kr_stack_size_value
data.raw.capsule["raw-fish"].stack_size = 50
data.raw.item["barrel"].stack_size = 10
data.raw.item["battery"].stack_size = kr_stack_size_value
data.raw.item["coal"].stack_size = kr_stack_size_value
data.raw.item["concrete"].stack_size = kr_stack_size_value
data.raw.item["concrete"].stack_size = kr_stack_size_value
data.raw.item["copper-ore"].stack_size = kr_stack_size_value
data.raw.item["copper-plate"].stack_size = kr_stack_size_value
data.raw.item["depleted-uranium-fuel-cell"].stack_size = 10
data.raw.item["hazard-concrete"].stack_size = kr_stack_size_value
data.raw.item["iron-gear-wheel"].stack_size = kr_stack_size_value
data.raw.item["iron-ore"].stack_size = kr_stack_size_value
data.raw.item["iron-plate"].stack_size = kr_stack_size_value
data.raw.item["iron-stick"].stack_size = kr_stack_size_value
data.raw.item["landfill"].stack_size = kr_stack_size_value
data.raw.item["low-density-structure"].stack_size = kr_stack_size_value * 0.5
data.raw.item["nuclear-fuel"].stack_size = 10
data.raw.item["plastic-bar"].stack_size = kr_stack_size_value
data.raw.item["processing-unit"].stack_size = kr_stack_size_value
data.raw.item["refined-concrete"].stack_size = kr_stack_size_value
data.raw.item["refined-hazard-concrete"].stack_size = kr_stack_size_value
data.raw.item["rocket-fuel"].stack_size = kr_stack_size_value * 0.5
data.raw.item["steel-plate"].stack_size = kr_stack_size_value
data.raw.item["stone-brick"].stack_size = kr_stack_size_value
data.raw.item["stone-brick"].stack_size = kr_stack_size_value
data.raw.item["stone"].stack_size = kr_stack_size_value
data.raw.item["stone-wall"].stack_size = kr_stack_size_value
data.raw.item["sulfur"].stack_size = kr_stack_size_value
data.raw.item["uranium-235"].stack_size = kr_stack_size_value
data.raw.item["uranium-238"].stack_size = kr_stack_size_value
data.raw.item["uranium-fuel-cell"].stack_size = 10
data.raw.item["uranium-ore"].stack_size = kr_stack_size_value
data.raw.item["wood"].stack_size = kr_stack_size_value
data.raw.tool[kr_optimization_tech_card_name].stack_size = 200

-- Space Age

data.raw.item["tree-seed"].stack_size = kr_stack_size_value
data.raw.item["artificial-yumako-soil"].stack_size = kr_stack_size_value
data.raw.item["artificial-jellynut-soil"].stack_size = kr_stack_size_value
data.raw.item["overgrowth-yumako-soil"].stack_size = kr_stack_size_value
data.raw.item["overgrowth-jellynut-soil"].stack_size = kr_stack_size_value
data.raw.capsule["jellynut"].stack_size = kr_stack_size_value
data.raw.item["jellynut-seed"].stack_size = kr_stack_size_value
data.raw.capsule["jelly"].stack_size = kr_stack_size_value
data.raw.capsule["yumako"].stack_size = kr_stack_size_value
data.raw.item["yumako-seed"].stack_size = kr_stack_size_value
data.raw.capsule["yumako-mash"].stack_size = kr_stack_size_value
data.raw.item["nutrients"].stack_size = kr_stack_size_value
data.raw.item["iron-bacteria"].stack_size = kr_stack_size_value
data.raw.item["copper-bacteria"].stack_size = kr_stack_size_value
data.raw.capsule["bioflux"].stack_size = kr_stack_size_value
data.raw.item["carbon"].stack_size = kr_stack_size_value
data.raw.item["carbon-fiber"].stack_size = kr_stack_size_value
data.raw.item["calcite"].stack_size = kr_stack_size_value
data.raw.item["tungsten-ore"].stack_size = kr_stack_size_value
data.raw.item["tungsten-carbide"].stack_size = kr_stack_size_value
data.raw.item["tungsten-plate"].stack_size = kr_stack_size_value
data.raw.item["holmium-ore"].stack_size = kr_stack_size_value
data.raw.item["holmium-plate"].stack_size = kr_stack_size_value
data.raw.item["superconductor"].stack_size = kr_stack_size_value
data.raw.item["supercapacitor"].stack_size = kr_stack_size_value
data.raw.item["ice"].stack_size = kr_stack_size_value
data.raw.item["lithium"].stack_size = kr_stack_size_value
data.raw.item["lithium-plate"].stack_size = kr_stack_size_value
data.raw.item["quantum-processor"].stack_size = kr_stack_size_value
data.raw.item["foundation"].stack_size = kr_stack_size_value
data.raw.item["ice-platform"].stack_size = kr_stack_size_value
data.raw.item["foundation"].stack_size = kr_stack_size_value
data.raw.item["scrap"].stack_size = kr_stack_size_value

-- K2

data.raw.item["kr-advanced-fuel"].stack_size = kr_stack_size_value
data.raw.item["kr-ai-core"].stack_size = kr_stack_size_value
data.raw.item["kr-automation-core"].stack_size = kr_stack_size_value
data.raw.item["kr-biofuel"].stack_size = kr_stack_size_value
data.raw.item["kr-biomass"].stack_size = kr_stack_size_value
data.raw.item["kr-biter-research-data"].stack_size = 200
data.raw.item["kr-blank-tech-card"].stack_size = 200
data.raw.item["kr-charged-matter-stabilizer"].stack_size = kr_stack_size_value * 0.5
data.raw.item["kr-coke"].stack_size = kr_stack_size_value
data.raw.item["kr-electronic-components"].stack_size = kr_stack_size_value
data.raw.item["kr-energy-control-unit"].stack_size = kr_stack_size_value * 0.5
data.raw.item["kr-enriched-copper"].stack_size = kr_stack_size_value
data.raw.item["kr-enriched-iron"].stack_size = kr_stack_size_value
data.raw.item["kr-fertilizer"].stack_size = kr_stack_size_value
data.raw.item["kr-fuel"].stack_size = kr_stack_size_value
data.raw.item["kr-glass"].stack_size = kr_stack_size_value
data.raw.item["kr-imersite-crystal"].stack_size = kr_stack_size_value * 0.5
data.raw.item["kr-imersite-powder"].stack_size = kr_stack_size_value
data.raw.item["kr-imersium-beam"].stack_size = kr_stack_size_value
data.raw.item["kr-imersium-gear-wheel"].stack_size = kr_stack_size_value
data.raw.item["kr-imersium-plate"].stack_size = kr_stack_size_value
data.raw.item["kr-inserter-parts"].stack_size = kr_stack_size_value
data.raw.item["kr-iron-beam"].stack_size = kr_stack_size_value
data.raw.item["kr-black-reinforced-plate"].stack_size = kr_stack_size_value
data.raw.item["kr-white-reinforced-plate"].stack_size = kr_stack_size_value
data.raw.item["kr-lithium-chloride"].stack_size = kr_stack_size_value
data.raw.item["kr-lithium"].stack_size = kr_stack_size_value
data.raw.item["kr-lithium-sulfur-battery"].stack_size = kr_stack_size_value
data.raw.item["kr-matter-cube"].stack_size = kr_stack_size_value
data.raw.item["kr-matter-research-data"].stack_size = 200
data.raw.item["kr-matter-stabilizer"].stack_size = kr_stack_size_value * 0.5
data.raw.item["kr-pollution-filter"].stack_size = kr_stack_size_value * 0.5
data.raw.item["kr-quartz"].stack_size = kr_stack_size_value
data.raw.item["kr-rare-metals"].stack_size = kr_stack_size_value
data.raw.item["kr-imersite"].stack_size = kr_stack_size_value
data.raw.item["kr-rare-metal-ore"].stack_size = kr_stack_size_value
data.raw.item["kr-sand"].stack_size = kr_stack_size_value
data.raw.item["kr-silicon"].stack_size = kr_stack_size_value
data.raw.item["kr-space-research-data"].stack_size = 1000
data.raw.item["kr-steel-beam"].stack_size = kr_stack_size_value
data.raw.item["kr-steel-gear-wheel"].stack_size = kr_stack_size_value
data.raw.item["kr-tritium"].stack_size = kr_stack_size_value
data.raw.item["kr-used-pollution-filter"].stack_size = kr_stack_size_value * 0.5
data.raw.tool["kr-advanced-tech-card"].stack_size = 200
data.raw.tool["kr-matter-tech-card"].stack_size = 200
data.raw.tool["kr-singularity-tech-card"].stack_size = 200
