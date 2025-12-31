execute if entity @s[tag=!converted,predicate=cavernous:conversion/creeper_to_glob] run function cavernous:secrets/mobs/glob/convert
execute if entity @s[tag=!glob] run tag @s add not_glob

execute if entity @s[tag=!converted] run tag @s add converted