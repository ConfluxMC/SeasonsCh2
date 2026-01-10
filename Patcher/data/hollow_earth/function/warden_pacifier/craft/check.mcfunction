particle minecraft:sculk_soul ~ ~0.5 ~ 0.1 0.1 0.1 0 1

execute as @e[type=item,distance=..1,tag=!has_crafted,predicate=cavernous:ancient_tablet] run function hollow_earth:warden_pacifier/craft/craft