execute as @e[type=item,nbt={Item:{id:"minecraft:shelter_pottery_sherd",count:1,components:{"minecraft:custom_data":{tag:ancient_tablet}}}}] at @s run function hollow_earth:warden_pacifier/craft/check

execute as @e[predicate=hollow_earth:warden_pacifier_bundle] at @s run particle minecraft:sculk_soul ~ ~0.5 ~ 0.1 0.1 0.1 0 1

execute as @e[predicate=hollow_earth:pacifies_wardens] at @s run function hollow_earth:warden_pacifier/run