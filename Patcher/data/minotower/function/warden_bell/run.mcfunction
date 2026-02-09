execute if predicate minotower:warden_bell_pulse run function minotower:warden_bell/pulse
execute at @e[type=warden,distance=..50] run particle minecraft:electric_spark ~ ~3.5 ~ 0.5 0.1 0.5 0.1 1

effect clear @a[distance=..8] darkness

# Delayed dazed warden reaction
execute if score @s warden_bell_effect matches 4 as @e[type=warden,distance=..50] at @s run playsound minecraft:entity.warden.agitated hostile @a ~ ~ ~ 0.5 1.7

particle minecraft:sculk_charge_pop ~ ~1 ~ 2.5 0.7 2.5 0.1 1

# Calculate effect loop counter
scoreboard players operation @s warden_bell_effect_temp = @s warden_bell_effect
scoreboard players operation @s warden_bell_effect_temp %= warden_bell_ambient_sounds warden_bell_effect_temp

function minotower:warden_bell/run_effects

scoreboard players add @s warden_bell_effect 1
execute as @s[predicate=!minotower:pacifies_wardens] run function minotower:warden_bell/end