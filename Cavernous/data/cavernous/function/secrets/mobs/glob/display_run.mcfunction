scoreboard players operation $current glob.id = @s glob.id
execute unless entity @e[type=creeper,tag=glob,predicate=cavernous:glob_id] run return run function cavernous:secrets/mobs/glob/death

scoreboard players add @s glob.animation_timer 1

### ANIMATION

execute if score @s glob.animation_timer matches 25 run function cavernous:secrets/mobs/glob/animations/grow
execute if score @s glob.animation_timer matches 50 run function cavernous:secrets/mobs/glob/animations/shrink

#Ambient Sound
execute if score @s glob.animation_timer matches 35 run playsound minecraft:block.sculk.charge hostile @a ~ ~ ~ 1 0.1 0