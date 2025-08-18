-- Maraxsis compatibility
-- Fixes collision mask mismatch between electric-mining-drill and kr-electric-mining-drill-mk2

if not mods["maraxsis"] then
  return
end

-- Ensure electric-mining-drill and its K2 upgrade target have the same collision mask
local base_drill_name = "electric-mining-drill"
local k2_upgrade_drill_name = "kr-electric-mining-drill-mk2"

if data.raw["mining-drill"] and data.raw["mining-drill"][base_drill_name] and data.raw["mining-drill"][k2_upgrade_drill_name] then
    local base_drill = data.raw["mining-drill"][base_drill_name]
    local k2_upgrade_drill = data.raw["mining-drill"][k2_upgrade_drill_name]

    -- If the base drill is set to upgrade to the K2 drill, ensure collision masks match
    if base_drill.next_upgrade and base_drill.next_upgrade == k2_upgrade_drill_name then
        -- Maraxsis adds "maraxsis_dome_collision_mask" to the electric-mining-drill
        -- We need to add the same layer to kr-electric-mining-drill-mk2
        log("K2-Maraxsis compat: Aligning collision masks for mining drill upgrade path")
        
        -- Ensure k2_upgrade_drill has a collision_mask structure
        k2_upgrade_drill.collision_mask = k2_upgrade_drill.collision_mask or {layers={}}
        k2_upgrade_drill.collision_mask.layers = k2_upgrade_drill.collision_mask.layers or {}
        
        -- Add the maraxsis_dome_collision_mask layer
        k2_upgrade_drill.collision_mask.layers["maraxsis_dome_collision_mask"] = true
        
        log("K2-Maraxsis compat: Added 'maraxsis_dome_collision_mask' layer to '" .. k2_upgrade_drill_name .. "'")
    end
end