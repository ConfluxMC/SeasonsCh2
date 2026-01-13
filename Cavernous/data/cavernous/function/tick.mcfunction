
### Tellraw

execute as @a if score @s joinmsg matches 1 unless score @s has_seen_tellraw matches 1 run function cavernous:tellraw



### Advancements

execute as @a at @s if score @s broke.spore_blossom matches 1.. if biome ~ ~ ~ cavernous:tropical_caves run advancement grant @s only cavernous:plantera
scoreboard players set @a broke.spore_blossom 0

### Custom Items

    #Miner Head
    execute as @a[predicate=cavernous:wearing_mining_helmet] run effect give @s night_vision 20 1 true

    #Torch Arrow
    execute as @e[type=arrow,predicate=cavernous:arrows/unlit_torch] at @s run data modify entity @s Fire set value 400
    execute as @e[type=arrow,predicate=cavernous:arrows/torch] at @s run function cavernous:items/torch_arrow/check

    #Dynamite
    execute as @e[type=item,predicate=cavernous:thrown_dynamite] if data entity @s Thrower at @s run function cavernous:items/dynamite/summon

    #Dynamite Arrow
    execute as @e[type=arrow,predicate=cavernous:arrows/explosive] at @s run function cavernous:items/explosive_arrow/explode

    #Chain arrow
    execute as @e[type=arrow,tag=!chain_arrow_started,predicate=cavernous:arrows/chain] at @s run function cavernous:items/chain_arrow/init
    execute as @e[type=arrow,tag=chain_arrow_started] at @s run function cavernous:items/chain_arrow/tick

### NEW CONVERSION

tag @e[type=#cavernous:convertables,tag=!converted] add unconverted

execute as @e[type=zombie,tag=unconverted] at @s run function cavernous:mob_conversion/zombie_main
execute as @e[type=skeleton,tag=unconverted] at @s run function cavernous:mob_conversion/skeleton_main
execute as @e[type=creeper,tag=unconverted] at @s run function cavernous:mob_conversion/creeper_main
execute as @e[type=magma_cube,tag=unconverted] at @s run function cavernous:mob_conversion/magma_cube_main

### MARBLE SKELETONS
execute as @e[type=skeleton,tag=marble_skeleton] at @s run function cavernous:hollow_earth/marble_skeleton/run
execute as @a[predicate=cavernous:marble_skeleton/holding_devotion_quartz] at @s anchored eyes if entity @n[type=creaking,distance=..12] run function cavernous:hollow_earth/marble_skeleton/creaking_player1

### SINGLE PALE SAPLING

kill @e[type=marker,tag=single_pale_sapling,predicate=!cavernous:single_pale_sapling/valid_marker]
execute as @e[type=item,predicate=cavernous:single_pale_sapling/quartz_at_sapling] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @n[type=minecraft:marker,tag=single_pale_sapling,distance=..0.6] run function cavernous:hollow_earth/single_pale_sapling/mark
execute as @e[type=marker,tag=single_pale_sapling,predicate=cavernous:single_pale_sapling/grow_ready] at @s run function cavernous:hollow_earth/single_pale_sapling/grow