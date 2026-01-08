playsound minecraft:block.glass.break block @a ~ ~ ~ 1 2
execute if data entity @s data.Item run function deeper_dark:sculk_converter/hitbox/remove
execute as @n[type=text_display,tag=deeper_dark.sculk_converter_fragments,distance=..5] at @s unless block ~ ~-1 ~ minecraft:sculk_catalyst run kill @s
execute as @n[type=text_display,tag=deeper_dark.sculk_converter_xp,distance=..5] at @s unless block ~ ~-1.5 ~ minecraft:sculk_catalyst run kill @s
execute as @n[type=interaction,tag=deeper_dark.sculk_converter_hitbox,distance=..5] at @s unless block ~ ~-2.5 ~ minecraft:sculk_catalyst run kill @s
execute as @n[type=text_display,tag=deeper_dark.sculk_converter_slot,distance=..5] at @s unless block ~ ~-3 ~ minecraft:sculk_catalyst run kill @s
execute as @n[type=item_display,tag=deeper_dark.sculk_converter_item,distance=..5] at @s unless block ~ ~-3 ~ minecraft:sculk_catalyst run kill @s
execute as @e[type=text_display,tag=deeper_dark.sculk_converter_texture,distance=..5,limit=20,sort=nearest] at @s unless block ^ ^ ^-.1 minecraft:sculk_catalyst run kill @s

function deeper_dark:sculk_converter/remove_fragment
execute if score @s deeper_dark.sculk_converter.fragments matches ..0 run kill @s
