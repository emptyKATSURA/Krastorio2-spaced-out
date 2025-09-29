
local data_util = require("data-util")

local convert = {
  ["oxygen"] = true,
  ["hydrogen"] = true,
  ["sand"] = true,
  ["glass"] = true,
  ["silicon"] = true,
}

for _, recipe in pairs(data.raw.recipe) do
  if not recipe.ingredients then
    goto next
  end

  for _, ingredient in pairs(recipe.ingredients) do
    if convert[ingredient.name] then
       data_util.convert_ingredient(recipe.name, ingredient.name, "kr-" .. ingredient.name )
    end
  end

  ::next::
  if not recipe.results then
    goto fin
  end

  for _, result in pairs(recipe.results) do
    if convert[result.name] then
      if recipe.main_product == result.name then
        recipe.main_product = "kr-" .. result.name
      end
      result.name = "kr-" .. result.name
    end
  end

  ::fin::
end

for _, item in pairs(data.raw.item) do
  if convert[item.name] then
    item.hidden = true
    item.hidden_in_factoriopedia = true
  end
end

for _, fluid in pairs(data.raw.fluid) do
  if convert[fluid.name] then
    fluid.hidden = true
    fluid.hidden_in_factoriopedia = true
  end
end
