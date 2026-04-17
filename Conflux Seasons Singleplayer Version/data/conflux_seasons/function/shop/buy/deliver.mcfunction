$summon item ~ ~ ~ {Item:$(item)}
$scoreboard players remove @s solstice_shards $(cost)

# Paying sound effect
playsound minecraft:block.amethyst_block.step ui @s ~ ~ ~ 10 1.4
advancement grant @s only conflux_seasons:visible/seasons/shop/shop buy