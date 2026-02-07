playsound minecraft:block.anvil.destroy neutral @a ~ ~ ~ 1 1
playsound minecraft:entity.piglin.jealous neutral @a ~ ~ ~ 1 1

summon item ^ ^1 ^0.25 {Item:{id:"gold_ingot"},PickupDelay:30}
execute positioned ^ ^1 ^0.25 run item replace entity @n[type=item] contents from entity @s weapon.offhand
item replace entity @s weapon.offhand with air