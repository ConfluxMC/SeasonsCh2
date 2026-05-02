execute as @e[type=#webslingers:webslinger_candidate,tag=!webslinger_converted] at @s run function webslingers:convert
execute as @e[type=#webslingers:webslinger_candidate,tag=webslinger] at @s run function webslingers:webslinger_tick
execute as @e[type=minecraft:falling_block,tag=webslinger_web] at @s run function webslingers:webslinger_web