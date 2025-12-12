execute as @e[type=spider,predicate=webslingers:wants_to_websling,tag=!webslinger_slung] at @s run function webslingers:websling
execute as @e[type=spider,predicate=webslingers:target_webbed] at @s run effect give @s minecraft:speed 1 2 true
execute as @e[type=spider,predicate=webslingers:target_webbed] at @s run effect give @s minecraft:weaving 2 0 false


execute as @e[tag=webslinger_slung,scores={webslinger_cooldown=0}] run execute as @s at @s run playsound minecraft:entity.spider.ambient hostile @a ~ ~ ~ 1 2
execute as @e[tag=webslinger_slung,scores={webslinger_cooldown=2}] run execute as @s at @s run playsound minecraft:entity.spider.ambient hostile @a ~ ~ ~ 1 2

execute as @e[tag=webslinger_web] run execute as @s at @s run particle minecraft:block{block_state:{Name:"cobweb"}} ~ ~ ~ 0.1 0.1 0.1 1 4
execute as @e[tag=webslinger_web] run execute as @s at @s run playsound minecraft:block.cobweb.fall hostile @a ~ ~ ~ 1 1.4

scoreboard players add @e[tag=webslinger_slung] webslinger_cooldown 1
execute as @e[tag=webslinger_slung,scores={webslinger_cooldown=60..}] run function webslingers:websling_remove_cooldown