scoreboard players set @s geyser.ambient_timer.max 160
scoreboard players operation @s geyser.ambient_timer.max += .global rand.1
scoreboard players operation @s geyser.ambient_timer = @s geyser.ambient_timer.max

setblock ~ ~ ~ basalt
tp @s ~ ~1 ~

tag @s add placed