if not mods["castra"] and not mods["Age-of-Production"] then
  return
end

if not settings.startup["kr-realistic-weapons"].value then
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

local category = data.raw.recipe["firearm-magazine"].category

add_group(category)
table.insert( data.raw ["assembling-machine"]["kr-advanced-assembling-machine"].crafting_categories, category )
