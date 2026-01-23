scoreboard players reset @n[tag=!miningHelmetMarker,predicate=miners_helmet:miners_helmet_id] miners_helmet.id

execute if block ~ ~ ~ light[waterlogged=false] run setblock ~ ~ ~ air
execute if block ~ ~1 ~ light[waterlogged=false] run setblock ~ ~1 ~ air
execute if block ~ ~ ~ light[waterlogged=true] run setblock ~ ~ ~ water
execute if block ~ ~1 ~ light[waterlogged=true] run setblock ~ ~1 ~ water

# Silently kill
tp @s ~ ~-500 ~
kill @s