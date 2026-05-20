#Stood On
    execute positioned ~ ~ ~ unless entity @e[type=!#geyser:cannot_be_geysered,tag=!geyser,distance=...65,predicate=geyser:not_sneaking] run scoreboard players set @s geyser.time_stood_on 0
    execute positioned ~ ~ ~ if entity @e[type=!#geyser:cannot_be_geysered,tag=!geyser,distance=...65,predicate=geyser:not_sneaking] run scoreboard players add @s geyser.time_stood_on 1
    execute positioned ~ ~ ~ if entity @e[type=player,tag=!geyser,distance=...65,scores={is_flying=1..}] run scoreboard players set @s geyser.time_stood_on 20
    scoreboard players set @a is_flying 0

    execute if score @s geyser.time_stood_on matches 1.. if predicate geyser:chance/50 run playsound minecraft:entity.magma_cube.jump block @a ~ ~1.5 ~ 0.35 0.5
    execute if score @s geyser.time_stood_on matches 1.. run particle minecraft:cloud ~ ~0.2 ~ 0.25 0.05 0.25 0.03 1 normal @a

    execute if score @s geyser.time_stood_on matches 20.. run function geyser:events/burst
    execute if score @s geyser.time_stood_on matches 20.. run scoreboard players operation @s geyser.ambient_timer = @s geyser.ambient_timer.max
    execute if score @s geyser.time_stood_on matches 20.. run scoreboard players set @s geyser.time_stood_on 0