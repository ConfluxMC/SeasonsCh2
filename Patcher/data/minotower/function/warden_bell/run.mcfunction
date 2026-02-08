execute as @e[type=warden,distance=..50] at @s run function minotower:warden_bell/pacify_warden

effect clear @a[distance=..8] darkness

# Delayed dazed warden reaction
execute if score @s warden_pacifier_effect matches 4 as @e[type=warden,distance=..50] at @s run playsound minecraft:entity.warden.agitated hostile @a ~ ~ ~ 0.5 1.7

particle minecraft:sculk_charge_pop ~ ~1 ~ 2.5 0.7 2.5 0.1 1

# Calculate effect loop counter
scoreboard players operation @s warden_pacifier_effect_temp = @s warden_pacifier_effect
scoreboard players operation @s warden_pacifier_effect_temp %= warden_pacifier_ambient_sounds warden_pacifier_effect_temp


function minotower:warden_bell/run_effects


scoreboard players add @s warden_pacifier_effect 1
execute as @s[predicate=!minotower:pacifies_wardens] run function minotower:warden_bell/end