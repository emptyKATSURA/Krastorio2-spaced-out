data:extend({
  {
    type = "gun",
    name = "kr-heavy-rocket-launcher",
    icon = "__Krastorio2Assets__/icons/guns/heavy-rocket-launcher.png",
    subgroup = "gun",
    order = "d[heavy-rocket-launcher]",
    stack_size = 5,
    weight = 200*kg,
    attack_parameters = {
      type = "projectile",
      ammo_category = "kr-heavy-rocket",
      movement_slow_down_factor = 0.75,
      cooldown = 180,
      projectile_creation_distance = 0.6,
      range = 90,
      projectile_center = { -0.17, 0 },
      sound = { { filename = "__Krastorio2Assets__/sounds/weapons/rocket-launch.ogg", volume = 1 } },
    },
  },
  {
    type = "gun",
    name = "kr-impulse-rifle",
    icon = "__Krastorio2Assets__/icons/guns/impulse-rifle.png",
    subgroup = "gun",
    order = "c2[impulse-rifle]",
    stack_size = 10,
    weight = 100*kg,
    attack_parameters = {
      type = "projectile",
      ammo_category = "kr-impulse-rifle",
      cooldown = 60,
      movement_slow_down_factor = 0.6,
      projectile_creation_distance = 0.6,
      fire_penalty = 1,
      range = 50,
      sound = {
        variations = {
          {
            filename = "__Krastorio2Assets__/sounds/weapons/impulse-shot-1.ogg",
            volume = 0.85,
          },
          {
            filename = "__Krastorio2Assets__/sounds/weapons/impulse-shot-2.ogg",
            volume = 0.85,
          },
          {
            filename = "__Krastorio2Assets__/sounds/weapons/impulse-shot-3.ogg",
            volume = 0.85,
          },
        },
        aggregation = {
          max_count = 2,
          remove = false,
          count_already_playing = true,
        },
      },
    },
  },
})
