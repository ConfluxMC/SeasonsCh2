execute positioned 0.0 0 0.0 run summon marker ^ ^0.3 ^0.65 {Tags:["rascal_direction"]}

summon splash_potion ^ ^ ^0.3 {Tags:[rascal_defense_potion],Item:{id:splash_potion,count:1,components:{potion_contents:{custom_color:7471155,custom_effects:[{id:blindness,duration:120},{id:slowness,duration:120},{id:poison,duration:40}]}}}}
data modify entity @n[type=splash_potion,tag=rascal_defense_potion] Owner set from entity @s UUID
data modify entity @n[type=splash_potion,tag=rascal_defense_potion] Motion set from entity @e[type=marker,tag=rascal_direction,limit=1] Pos

kill @e[type=marker,tag=rascal_direction]

playsound rascal:entity.rascal.throw neutral @a ~ ~ ~