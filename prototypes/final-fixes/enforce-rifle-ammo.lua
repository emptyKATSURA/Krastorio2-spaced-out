local data_util = require("data-util")

if not settings.startup["kr-realistic-weapons"].value then
  return
end

for _, recipe in pairs(data.raw.recipe) do
    for _, ingredients in pairs(recipe.ingredients or {}) do
        if ingredients.name == "uranium-rounds-magazine" then
            data_util.convert_ingredient(recipe.name,"uranium-rounds-magazine", "kr-uranium-rifle-magazine" )
        end
    end
    for _, results in pairs(recipe.results or {}) do
        if results.name == "uranium-rounds-magazine" then
            data_util.add_or_replace_product(recipe.name,"uranium-rounds-magazine", { type = "item", name = "kr-uranium-rifle-magazine", amount = results.amount }
)
        end
    end
end
