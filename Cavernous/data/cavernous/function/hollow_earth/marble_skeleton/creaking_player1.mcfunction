# Execute creaking_player2 only if the creaking is targetting the player
execute as @e[type=creaking,distance=..12,predicate=cavernous:marble_skeleton_pacify] run function cavernous:hollow_earth/marble_skeleton/creaking_player2

# Regardless of if the creaking is targetting the player, marble players will always look at nearby creakings and get darkness
effect give @s minecraft:darkness 3 0 true
function cavernous:hollow_earth/marble_skeleton/creaking_stare