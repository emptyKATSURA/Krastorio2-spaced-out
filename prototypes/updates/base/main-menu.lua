local backgrounds = {
  ["Factorio Alternative 1"] = "__Krastorio2Assets__/backgrounds/factorio-alternative-1.jpg",
  ["Factorio Alternative 2"] = "__Krastorio2Assets__/backgrounds/factorio-alternative-2.jpg",
  ["Factorio Alternative 3"] = "__Krastorio2Assets__/backgrounds/factorio-alternative-3.jpg",
  ["Factorio Alternative 4"] = "__Krastorio2Assets__/backgrounds/factorio-alternative-4.jpg",
  ["Krastorio 2"] = "__Krastorio2Assets__/backgrounds/krastorio-2.jpg",
  ["Krastorio Chan"] = "__Krastorio2Assets__/backgrounds/krastorio-chan.jpg",
  ["Krastorio CyberSkull"] = "__Krastorio2Assets__/backgrounds/krastorio-cyberskull.jpg",
  ["Krastorio Explorer"] = "__Krastorio2Assets__/backgrounds/krastorio-explorer.jpg",
  ["Krastorio Legacy"] = "__Krastorio2Assets__/backgrounds/krastorio-legacy.jpg",
  ["Krastorio THE FACTORY MUST GROW"] = "__Krastorio2Assets__/backgrounds/krastorio-fmg.jpg",
}
local path_name = settings.startup["kr-main-menu-background"].value --[[@as string]]
local background = backgrounds[path_name]
if background then
  data.raw["utility-constants"]["default"].main_menu_background_image_location = background
end
