particle minecraft:sculk_soul ~ ~0.5 ~ 0.1 0.1 0.1 0 1

execute as @e[type=item,distance=..1,tag=!has_crafted,nbt={Item:{id:"minecraft:shelter_pottery_sherd",count:1,components:{"minecraft:custom_data":{tag:ancient_tablet}}}}] run function hollow_earth:warden_pacifier/craft/craft