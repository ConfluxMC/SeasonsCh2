execute as @s[tag=!bell_crafter] run return run function minotower:barter_bell_template_fail

playsound minecraft:block.anvil.use neutral @a ~ ~ ~ 1 1
particle minecraft:small_flame ~ ~ ~ 1 1 1 0.05 0 normal

loot spawn ^ ^1 ^0.25 loot minotower:bell/template_barter
item replace entity @s weapon.offhand with air