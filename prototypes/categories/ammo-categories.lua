data:extend({
  {
    type = "ammo-category",
    name = "kr-impulse-rifle",
    bonus_gui_order = "k",
    subgroup = "ammo-category",
  },
  {
    type = "ammo-category",
    name = "kr-heavy-rocket",
    bonus_gui_order = "i",
    subgroup = "ammo-category",
  },
  {
    type = "ammo-category",
    name = "kr-railgun-shell",
    bonus_gui_order = "i",
    subgroup = "ammo-category",
  },
  {
    type = "ammo-category",
    name = "kr-turret-missile",
    bonus_gui_order = "q",
    subgroup = "ammo-category",
  },
})

if not settings.startup["kr-realistic-weapons"].value then
  return
end

data:extend({
  {
    type = "ammo-category",
    name = "kr-pistol",
    bonus_gui_order = "r",
    subgroup = "ammo-category",
  },
  {
    type = "ammo-category",
    name = "kr-anti-materiel-rifle-ammo",
    bonus_gui_order = "t",
    subgroup = "ammo-category",
  },
})
