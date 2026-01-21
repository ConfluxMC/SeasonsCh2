tag @s add no_id_miners_helmet
summon marker ~ ~ ~ {Tags:["miningHelmetMarker","no_id_miners_helmet"]}

scoreboard players operation @e[tag=no_id_miners_helmet] miners_helmet.id = .global miners_helmet.id
scoreboard players add .global miners_helmet.id 1
tag @e[tag=no_id_miners_helmet] remove no_id_miners_helmet