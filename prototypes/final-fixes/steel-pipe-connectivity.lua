-- Allow any fluidbox with a discrete connection to connect to both kinds of pipes, but don't allow them to connect with each other.

if not settings.startup["kr-steel-pipes-need-pumps"].value then
  return
end

local flib_prototypes = require("__flib__.prototypes")

--- @param fluid_box data.FluidBox
local function add_category(fluid_box)
  for _, connection in pairs(fluid_box.pipe_connections) do
    if not connection.flow_direction or connection.flow_direction == "input-output" then
      goto continue
    end
    ::next::
    local categories = connection.connection_category or { "default" }
    if #categories == 1 and categories[1] == "default" then
      categories[#categories + 1] = "kr-steel-pipe"
      connection.connection_category = categories
    end
    ::continue::
  end
end

for _, entity in pairs(flib_prototypes.all("entity")) do
  for _, key in pairs({ "fluid_box", "input_fluid_box", "output_fluid_box", "fuel_fluid_box", "oxidizer_fluid_box" }) do
    local fluid_box = entity[key]
    if fluid_box then
      --- @cast fluid_box data.FluidBox
      add_category(fluid_box)
    end
  end
  local crafter_fluid_boxes = entity.fluid_boxes --- @diagnostic disable-line: undefined-field
  if crafter_fluid_boxes then
    for _, fluid_box in pairs(crafter_fluid_boxes) do
      --- @cast fluid_box data.FluidBox
      add_category(fluid_box)
    end
  end
  local energy_source = entity.energy_source --- @diagnostic disable-line: undefined-field
  if energy_source and energy_source.type == "fluid" then
    --- @cast energy_source data.FluidEnergySource
    add_category(energy_source.fluid_box)
  end
end
