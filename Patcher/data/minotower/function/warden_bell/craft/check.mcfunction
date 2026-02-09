execute as @n[type=item,distance=..1,tag=!has_crafted,predicate=cavernous:ancient_tablet] run function minotower:warden_bell/craft/craft

execute unless predicate minotower:warden_bell_template_bundle_particle run return 0
particle minecraft:sculk_soul ~ ~0.5 ~ 0.1 0.1 0.1 0 1
playsound minecraft:particle.soul_escape player @a ~ ~ ~ 0.4