tag @s add deeper_dark.silent_despawn
tag @n[type=minecraft:item,distance=0...6,predicate=deeper_dark:item_cobbled_deepslate] add deeper_dark.silent_despawn
loot spawn ~ ~ ~ loot deeper_dark:items/anticatalyst
execute as @e[type=minecraft:text_display,tag=deeper_dark.anticatalyst.texture] at @s unless block ^ ^ ^-0.2 minecraft:cobbled_deepslate run tag @s add deeper_dark.silent_despawn