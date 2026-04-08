execute as @s[predicate=webslingers:eligible_webslinger,predicate=webslingers:wants_to_websling,tag=!webslinger_slung] run function webslingers:websling
execute as @s[predicate=webslingers:eligible_webslinger,predicate=webslingers:target_webbed] run function webslingers:target_webbed


execute as @s[tag=webslinger_slung,scores={webslinger_cooldown=0}] run playsound minecraft:entity.spider.ambient hostile @a ~ ~ ~ 1 2
execute as @s[tag=webslinger_slung,scores={webslinger_cooldown=2}] run playsound minecraft:entity.spider.ambient hostile @a ~ ~ ~ 1 2

scoreboard players add @s[tag=webslinger_slung] webslinger_cooldown 1
execute as @s[tag=webslinger_slung,scores={webslinger_cooldown=60..}] run function webslingers:websling_remove_cooldown