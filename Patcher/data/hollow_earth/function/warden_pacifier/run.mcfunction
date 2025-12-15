execute as @e[type=warden,distance=..50] at @s run function hollow_earth:warden_pacifier/pacify_warden

effect clear @a[distance=..8] darkness

# Delayed dazed warden reaction
execute as @s[scores={warden_pacifier_effect=4}] run execute as @e[type=warden,distance=..50] at @s run playsound minecraft:entity.warden.agitated hostile @a ~ ~ ~ 0.5 1.7

execute as @p at @s run particle minecraft:sculk_charge_pop ~ ~1 ~ 2.5 0.7 2.5 0.1 1
scoreboard players operation @s warden_pacifier_effect_temp = @s warden_pacifier_effect
scoreboard players operation @s warden_pacifier_effect_temp %= warden_pacifier_ambient_sounds warden_pacifier_effect_temp


execute as @s[scores={warden_pacifier_effect_temp=0}] at @s run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1 1.7
execute as @s[scores={warden_pacifier_effect_temp=20}] at @s run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1 1.7
execute as @s[scores={warden_pacifier_effect_temp=40}] at @s run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1 1.7
execute as @s[scores={warden_pacifier_effect_temp=60}] at @s run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1 1.7
execute as @s[scores={warden_pacifier_effect_temp=80}] at @s run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1 1.7

execute as @s[scores={warden_pacifier_effect_temp=0}] at @s run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 3 0
execute as @s[scores={warden_pacifier_effect_temp=20}] at @s run playsound minecraft:ambient.warped_forest.mood player @s ~ ~ ~ 0.3 0.6
execute as @s[scores={warden_pacifier_effect_temp=45}] at @s run playsound minecraft:block.bell.resonate player @s ~ ~ ~ 0.1 0.3
execute as @s[scores={warden_pacifier_effect_temp=65}] at @s run playsound minecraft:weather.end_flash player @s ~ ~ ~ 6 1.7
execute as @s[scores={warden_pacifier_effect_temp=70}] at @s run playsound minecraft:particle.soul_escape player @s ~ ~ ~ 1 1


scoreboard players add @s warden_pacifier_effect 1
execute as @s[predicate=!hollow_earth:pacifies_wardens] run function hollow_earth:warden_pacifier/end