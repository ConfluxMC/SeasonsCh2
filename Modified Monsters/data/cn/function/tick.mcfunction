#creeper check
execute as @e[type=minecraft:creeper,tag=!cn_done] at @s run function cn:setup
execute as @e[type=minecraft:area_effect_cloud] run function cn:check