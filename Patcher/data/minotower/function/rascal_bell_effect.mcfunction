particle minecraft:electric_spark ~ ~1.5 ~ 0.5 0.1 0.5 0.1 10
playsound minecraft:entity.illusioner.prepare_mirror player @a ~ ~ ~ 0.6 2
effect give @s minecraft:slowness 5 4

scoreboard players operation $current rascal.id = @s rascal.id
effect give @n[type=armor_stand,tag=rascal_stand,predicate=rascal:rascal_id] minecraft:glowing 10 0 true