for _, inserter in pairs(data.raw.inserter) do
  if inserter.energy_source and inserter.energy_source.type == "burner" then
    inserter.allow_burner_leech = true
    inserter.localised_description = {
      "",
      { "?", { "", inserter.localised_description or { "entity-description." .. inserter.name }, "\n" }, "" },
      { "entity-description.kr-burner-leech-description" },
    }
  end
end
