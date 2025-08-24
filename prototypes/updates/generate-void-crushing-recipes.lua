local flib_prototypes = require("__flib__.prototypes")
local crushing_lib = require("prototypes.libraries.crushing")

local blacklist = {
  ["cryolab"] = true, --Muluna finishes generating cryolab at later stage, causing error at startup
  ["stone"] = true, 
  ["kr-imersite"] = true, 
  ["biter-egg"] = true, 
}

for _, item in pairs(flib_prototypes.all("item")) do
  if item.type ~= "module" and not crushing_lib.get_recipe(item) and not blacklist[item.name] then
    crushing_lib.make_recipe(item)
  end
end
