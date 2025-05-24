function chakram:enchants/bouncing/find/cleanup
data modify entity @s teleport_duration set value 0
tp @s ~ ~ ~ ~ ~
data modify entity @s teleport_duration set value 1
scoreboard players add @s chakram_bouncing_count 1

#effect
particle minecraft:gust ~ ~ ~ 0 0 0 0.1 1 force
playsound minecraft:entity.breeze.deflect master @a ~ ~ ~ 0.5 1.3

return 1