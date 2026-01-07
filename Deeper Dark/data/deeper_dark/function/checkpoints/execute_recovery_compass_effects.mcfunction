# Sounds and particles
playsound minecraft:item.totem.use master @a ~ ~ ~
playsound minecraft:entity.warden.death master @a ~ ~ ~ 0.4 1
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 1 3
particle minecraft:sculk_charge_pop ~ ~ ~ 0.1 1 0.1 0.5 40

# Hungry for 2m 8s
effect give @s hunger 128 9 false

# Enchanted Golden Apple Lite (to get out of precarious death spots)
effect give @s minecraft:absorption 8 3
effect give @s minecraft:resistance 16
effect give @s minecraft:fire_resistance 16

# Play standard tp_in effects
function deeper_dark:tp_in_effects