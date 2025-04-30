local flib_migration = require("__flib__.migration")
local biter_virus = require("scripts.biter-virus")
local planetary_teleporter = require("scripts.planetary-teleporter")

local function ensure_turret_force()
  if not game.forces["kr-internal-turrets"] then
    game.create_force("kr-internal-turrets")
  end
end

local migrations = {}

migrations.on_init = ensure_turret_force

function migrations.on_configuration_changed(e)
  if flib_migration.on_config_changed(e, migrations.versions) then
    ensure_turret_force()
  end
end

migrations.events = {
  [defines.events.on_technology_effects_reset] = function(e)
    if game.finished or game.finished_but_continuing then
      e.force.technologies["kr-logo"].enabled = true
    end
  end,
}

migrations.versions = {
  ["1.2.25"] = function()
    error("Loading Krastorio 2 saves from versions prior to 1.2.25 is no longer supported.")
  end,
  ["1.3.0"] = function()
    if game.finished or game.finished_but_continuing then
      for _, force in pairs(game.forces) do
        force.technologies["kr-logo"].enabled = true
      end
    end
  end,
  ["1.3.8"] = function()
    -- Clean up any invalid roboport GUIs
    local new = {}
    for player_index, player_gui in pairs(storage.roboport_guis) do
      if player_gui.valid then
        new[player_index] = player_gui
      end
    end
    storage.roboport_guis = new
  end,
  ["1.3.10"] = function()
    -- Clean up any orphaned internal entities
    local valid_unit_numbers = {}
    for _, data in pairs(storage.tesla_coil.towers) do
      for _, entity in pairs(data.entities) do
        if entity.valid then
          valid_unit_numbers[entity.unit_number or 0] = true
        end
      end
    end
    --- @diagnostic disable-next-line
    for _, data in pairs(storage.planetary_teleporter.data) do
      for _, entity in pairs(data.entities) do
        if entity.valid then
          valid_unit_numbers[entity.unit_number or 0] = true
        end
      end
    end
    for _, surface in pairs(game.surfaces) do
      for _, entity in
        pairs(surface.find_entities_filtered({
          name = {
            "kr-planetary-teleporter-turret",
            "kr-planetary-teleporter-front-layer",
            "kr-planetary-teleporter-collision-1",
            "kr-planetary-teleporter-collision-2",
            "kr-planetary-teleporter-collision-3",
            "kr-tesla-coil-turret",
            "kr-tesla-coil-collision",
          },
        }))
      do
        if entity.valid and not valid_unit_numbers[entity.unit_number] then
          entity.destroy()
        end
      end
    end
  end,
  ["2.0.0"] = function()
    storage.creep = nil
    storage.inserter_has_droplane_gui = nil
    storage.temp_inserter_settings = nil
    storage.virus = nil
    biter_virus.on_init()
    storage.intergalactic_transceiver.in_cutscene = {}

    --- @diagnostic disable: undefined-field

    if storage.inserter_guis then
      for _, gui in pairs(storage.inserter_guis) do
        if gui.valid then
          gui.destroy()
        end
      end
      storage.inserter_guis = nil
    end

    if storage.planetary_teleporter and storage.planetary_teleporter.data then
      --- @type {entity: LuaEntity, name: string?}[]
      local teleporters = {}
      for _, data in pairs(storage.planetary_teleporter.data) do
        local entity = data.entities.base
        if not entity or not entity.valid then
          goto continue
        end

        for key, stored_entity in pairs(data.entities) do
          if key ~= "base" and stored_entity.valid then
            stored_entity.destroy()
          end
        end

        teleporters[#teleporters + 1] = { entity = entity, name = data.name }

        ::continue::
      end

      storage.planetary_teleporter = nil

      planetary_teleporter.on_init()
      for _, data in pairs(teleporters) do
        planetary_teleporter.migrate_teleporter(data.entity, data.name)
      end
    end

    --- @param force LuaForce
    --- @param name string
    local function research(force, tech_name)
      local tech = force.technologies[tech_name]
      if tech then
        tech.researched = true
      end
    end

    for _, force in pairs(game.forces) do
      if
        force.technologies["production-science-pack"].researched
        or force.technologies["utility-science-pack"].researched
      then
        local found_basic = false
        local found_automation = false
        for _, surface in pairs(game.surfaces) do
          if surface.count_entities_filtered({ name = "lab" }) > 0 then
            found_basic = true
            found_automation = true
          elseif surface.count_entities_filtered({ name = { "kr-advanced-lab" } }) > 0 then
            found_automation = true
          end
        end
        if not found_basic then
          research(force, "kr-laboratory")
          research(force, "radar")
          research(force, "repair-pack")
        end
        if not found_automation then
          research(force, "advanced-combinators")
          research(force, "kr-fusion-reactor-equipment")
        end
      end
    end
  end,
}

return migrations
