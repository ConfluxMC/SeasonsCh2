### Noxwoods Poison Water
execute as @e[type=#cavernous:noxwoods_poisonable,predicate=cavernous:in_noxwoods] run function cavernous:myst/noxwoods_poison


### Remnant Crafting
execute as @e[type=item,predicate=cavernous:craft_potion_remnants] at @s run function cavernous:myst/remnant_craft

### Portal
execute as @e[type=marker,tag=gate_center,scores={portal.activating=1..}] at @s run function cavernous:myst/portal_activation/run

### Mobs

    #### Oozer
    execute as @e[type=item,predicate=cavernous:oozer_death_rotten_flesh] at @s positioned ~ ~1 ~ run function cavernous:myst/mobs/oozer/explode

    #### Ghost
    execute as @e[type=skeleton,tag=ghost] at @s if entity @a[distance=..30] run function cavernous:myst/mobs/ghost/run

    #### Noxwood Bogged
    execute as @e[type=bogged,tag=!converted] at @s if biome ~ ~ ~ cavernous:myst/noxwoods run function cavernous:myst/mobs/bogged/convert

### Final Boss
    execute as @e[type=skeleton,tag=priest_boss] at @s run function cavernous:myst/arena/priest_run

    #### If no priest is alive, set score to 0 to indicate he is summonable again
    execute unless entity @e[type=skeleton,tag=priest_boss] run scoreboard players set .global priest.active_global 0
    execute if score .global priest.active_global matches 0 run bossbar set high_priest_health players

    #### return Portal
    execute as @e[type=marker,tag=return_portal,scores={return_portal.active=1}] at @s if entity @a[distance=..30] run function cavernous:myst/arena/return_portal_run
