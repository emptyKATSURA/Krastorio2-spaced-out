local pipe = table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"])
pipe.name = "kr-legacy-steel-pipe-to-ground"
pipe.placeable_by = { item = "kr-steel-pipe-to-ground", count = 1 }
for _, connection in pairs(pipe.fluid_box.pipe_connections) do
  if connection.connection_type == "underground" then
    connection.max_underground_distance = 30
  end
end
data:extend({ pipe })
