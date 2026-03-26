item modify entity @s contents minotower:remove_weapon_trim
playsound minecraft:entity.generic.splash block @a ~ ~ ~ 0.5
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.1 3

execute on origin run advancement grant @s only minotower:visible/sear_regretter