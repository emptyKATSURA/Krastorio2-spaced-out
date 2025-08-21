local util = require("scripts.util")

--- @param e EventData.on_player_placed_equipment
local function on_player_placed_equipment(e)
  local equipment = e.equipment
  if not equipment.valid or equipment.name ~= "kr-energy-absorber-equipment" then
    return
  end
  local grid = e.grid
  if not grid.valid then
    return
  end

  local player = game.get_player(e.player_index)
  if not player then
    return
  end

  local found = 0
  for _, equipment_spec in pairs(grid.get_contents()) do
    if equipment_spec.name == "kr-energy-absorber-equipment" then
      found = found + equipment_spec.count
    end
  end
  if found <= 1 then
    return
  end

  local quality = equipment.quality

  -- Retrieve the equipment
  grid.take({ equipment = equipment, by_player = player })

  -- Return the item
  player.character.insert({ name = "kr-energy-absorber-equipment", count = 1, quality = quality.name })

  -- Show the error
  if (storage.error_message_tick[e.player_index] or 0) + 30 < game.ticks_played then
    util.flying_text_with_sound(player, { "message.kr-already-one-energy-absorber-equipment" })
  end
  storage.error_message_tick[e.player_index] = game.ticks_played
end

local energy_absorber = {}

function energy_absorber.on_init()
  --- Holds the last tick that an energy absorber error message was displayed for each player
  --- @type table<number, number>
  storage.error_message_tick = {}
end

energy_absorber.events = {
  [defines.events.on_player_placed_equipment] = on_player_placed_equipment,
}

return energy_absorber
