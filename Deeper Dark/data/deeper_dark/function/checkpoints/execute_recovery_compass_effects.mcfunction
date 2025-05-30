# Sounds and particles
$execute in $(dimension) run playsound minecraft:item.totem.use master @a $(x) $(y_adj) $(z)
$execute in $(dimension) run playsound minecraft:entity.warden.death master @a $(x) $(y_adj) $(z) 0.4 1
$execute in $(dimension) run particle minecraft:sonic_boom $(x) $(y_adj) $(z) 0 0 0 1 3
$execute in $(dimension) run particle minecraft:sculk_charge_pop $(x) $(y_adj) $(z) 0.1 1 0.1 0.5 40


# Enchanted Golden Apple Lite (to get out of precarious death spots)
effect give @s minecraft:absorption 8 3
effect give @s minecraft:resistance 16
effect give @s minecraft:fire_resistance 16

# Hungry for 2m 8s
effect give @s hunger 128 9 false