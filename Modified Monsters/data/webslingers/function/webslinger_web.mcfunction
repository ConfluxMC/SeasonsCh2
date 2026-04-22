particle minecraft:block{block_state:{Name:"cobweb"}} ~ ~ ~ 0.1 0.1 0.1 1 4
playsound minecraft:block.cobweb.fall hostile @a ~ ~ ~ 1 1.4

execute unless predicate webslingers:stopped_web run return 1
execute if block ~ ~ ~ air run return run setblock ~ ~ ~ minecraft:cobweb replace
playsound minecraft:block.cobweb.break hostile @a ~ ~ ~ 1 0
kill @s