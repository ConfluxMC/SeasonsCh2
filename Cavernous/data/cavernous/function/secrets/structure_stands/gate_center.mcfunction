execute as @a[distance=..15] run advancement grant @s only cavernous:expansion/secrets/story/a2_discover_gate

execute if entity @a[distance=..30] if score @s portal.active matches 1 run function cavernous:myst/portal_active

execute unless score @s portal.active matches 1 if entity @a[distance=..10,scores={drank_bloodbound_potion=1..}] run function cavernous:myst/portal_activation/start