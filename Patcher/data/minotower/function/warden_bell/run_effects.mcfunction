#execute if score @s warden_pacifier_effect_temp matches 0 run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1 1.7
execute if score @s warden_pacifier_effect_temp matches 0 run return run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 3 0

#execute if score @s warden_pacifier_effect_temp matches 20 run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1 1.7
execute if score @s warden_pacifier_effect_temp matches 20 run return run playsound minecraft:ambient.warped_forest.mood player @s ~ ~ ~ 0.3 0.6

#execute if score @s warden_pacifier_effect_temp matches 40 run return run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1 1.7

execute if score @s warden_pacifier_effect_temp matches 45 run return run playsound minecraft:block.bell.resonate player @s ~ ~ ~ 0.1 0.3

#execute if score @s warden_pacifier_effect_temp matches 60 run return run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1 1.7

execute if score @s warden_pacifier_effect_temp matches 65 run return run playsound minecraft:weather.end_flash player @s ~ ~ ~ 6 1.7

execute if score @s warden_pacifier_effect_temp matches 70 run return run playsound minecraft:particle.soul_escape player @s ~ ~ ~ 1 1

#execute if score @s warden_pacifier_effect_temp matches 80 run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1 1.7