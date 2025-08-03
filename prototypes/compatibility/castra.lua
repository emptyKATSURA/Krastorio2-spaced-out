if not mods["castra"] and not mods["Age-of-Production"] then
  return
end

function add_group(group)
    data.raw.recipe["kr-rifle-magazine"].category = group
    data.raw.recipe["kr-armor-piercing-rifle-magazine"].category = group
    data.raw.recipe["kr-uranium-rifle-magazine"].category = group
    data.raw.recipe["kr-imersite-rifle-magazine"].category = group
    data.raw.recipe["kr-anti-materiel-rifle-magazine"].category = group
    data.raw.recipe["kr-armor-piercing-anti-materiel-rifle-magazine"].category = group
    data.raw.recipe["kr-uranium-anti-materiel-rifle-magazine"].category = group
    data.raw.recipe["kr-imersite-anti-materiel-rifle-magazine"].category = group
end

if settings.startup["kr-realistic-weapons"].value then
    if mods["castra"] and not mods["Age-of-Production"] then add_group("castra-crafting") end
    if not mods["castra"] and mods["Age-of-Production"] then
      add_group("ammunition-or-crafting")
      table.insert( data.raw ["assembling-machine"]["kr-advanced-assembling-machine"].crafting_categories, "ammunition-or-crafting" )
    end
    if mods["castra"] and mods["Age-of-Production"] then
      add_group("castra-ammunition-or-crafting")
      table.insert( data.raw ["assembling-machine"]["kr-advanced-assembling-machine"].crafting_categories, "castra-ammunition-or-crafting" )
    end
end
