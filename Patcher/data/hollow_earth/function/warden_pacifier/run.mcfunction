execute as @e[type=warden,distance=..50] at @s run function hollow_earth:warden_pacifier/pacify_warden

effect clear @a[distance=..8] darkness

# Delayed dazed warden reaction
execute if score @s warden_pacifier_effect matches 4 as @e[type=warden,distance=..50] at @s run playsound minecraft:entity.warden.agitated hostile @a ~ ~ ~ 0.5 1.7

particle minecraft:sculk_charge_pop ~ ~1 ~ 2.5 0.7 2.5 0.1 1

# Calculate effect loop counter
scoreboard players operation @s warden_pacifier_effect_temp = @s warden_pacifier_effect
scoreboard players operation @s warden_pacifier_effect_temp %= warden_pacifier_ambient_sounds warden_pacifier_effect_temp


execute if score @s warden_pacifier_effect_temp matches 0 run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1 1.7
execute if score @s warden_pacifier_effect_temp matches 20 run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1 1.7
execute if score @s warden_pacifier_effect_temp matches 40 run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1 1.7
execute if score @s warden_pacifier_effect_temp matches 60 run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1 1.7
execute if score @s warden_pacifier_effect_temp matches 80 run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1 1.7

execute if score @s warden_pacifier_effect_temp matches 0 run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 3 0
execute if score @s warden_pacifier_effect_temp matches 20 run playsound minecraft:ambient.warped_forest.mood player @s ~ ~ ~ 0.3 0.6
execute if score @s warden_pacifier_effect_temp matches 45 run playsound minecraft:block.bell.resonate player @s ~ ~ ~ 0.1 0.3
execute if score @s warden_pacifier_effect_temp matches 65 run playsound minecraft:weather.end_flash player @s ~ ~ ~ 6 1.7
execute if score @s warden_pacifier_effect_temp matches 70 run playsound minecraft:particle.soul_escape player @s ~ ~ ~ 1 1

execute if score @s warden_pacifier_effect_temp matches 70 run particle minecraft:soul_fire_flame ~ ~ ~ -1 0 -1 0.5 0 normal
execute if score @s warden_pacifier_effect_temp matches 70 run particle minecraft:soul_fire_flame ~ ~ ~ -1 0 0 0.5 0 normal
execute if score @s warden_pacifier_effect_temp matches 70 run particle minecraft:soul_fire_flame ~ ~ ~ -1 0 1 0.5 0 normal
execute if score @s warden_pacifier_effect_temp matches 70 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 -1 0.5 0 normal
execute if score @s warden_pacifier_effect_temp matches 70 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 1 0.5 0 normal
execute if score @s warden_pacifier_effect_temp matches 70 run particle minecraft:soul_fire_flame ~ ~ ~ 1 0 -1 0.5 0 normal
execute if score @s warden_pacifier_effect_temp matches 70 run particle minecraft:soul_fire_flame ~ ~ ~ 1 0 1 0.5 0 normal


scoreboard players add @s warden_pacifier_effect 1
execute as @s[predicate=!hollow_earth:pacifies_wardens] run function hollow_earth:warden_pacifier/end