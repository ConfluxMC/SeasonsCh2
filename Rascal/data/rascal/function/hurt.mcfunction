execute as @s on attacker run execute at @s run summon potion ~ ~ ~ {Tags:[rascal_defense_potion],Item:{id:splash_potion,count:1,components:{potion_contents:{custom_color:7471155,custom_effects:[{id:blindness,duration:120,show_particles:0b,show_icon:0b},{id:slowness,duration:120,show_particles:0b,show_icon:0b},{id:poison,duration:40,show_particles:0b,show_icon:0b}]}}}}
data modify entity @n[type=minecraft:potion,tag=rascal_defense_potion] Owner set from entity @s UUID

execute at @s run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~