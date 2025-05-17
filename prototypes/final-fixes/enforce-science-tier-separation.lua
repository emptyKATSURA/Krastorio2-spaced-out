local data_util = require("data-util")

--- For every technology with `base_pack`, removes all occurrences of `incompatible_packs`.
--- @param base_pack data.ItemID
--- @param incompatible_packs table<data.ItemID, boolean>
local function remove_incompatible_packs(base_pack, incompatible_packs)
  for _, technology in pairs(data.raw.technology) do
    if not technology.unit then
      goto continue
    end

    local ingredients = technology.unit.ingredients
    if not ingredients then
      data_util.error("Technology " .. technology.name .. " unit ingredients are nil")
      return
    end

    local has_base = false
    for i = 1, #ingredients do
      if ingredients[i][1] == base_pack then
        has_base = true
        break
      end
    end
    if not has_base then
      goto continue
    end

    for i = #ingredients, 1, -1 do
      local ingredient = ingredients[i]
      if incompatible_packs[ingredient[1]] then
        table.remove(ingredients, i)
      end
    end

    ::continue::
  end
end

local tier_2_incompatibilities = {
  ["automation-science-pack"] = true,
  ["logistic-science-pack"] = true,
  ["military-science-pack"] = true,
  ["chemical-science-pack"] = true,
}

remove_incompatible_packs("kr-advanced-tech-card", tier_2_incompatibilities)
remove_incompatible_packs(kr_optimization_tech_card_name, tier_2_incompatibilities)
remove_incompatible_packs("kr-matter-tech-card", tier_2_incompatibilities)
remove_incompatible_packs("kr-singularity-tech-card", tier_2_incompatibilities)
