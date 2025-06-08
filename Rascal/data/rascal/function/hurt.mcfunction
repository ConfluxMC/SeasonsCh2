execute as @s on attacker run tag @s add rascal_attacker
execute as @s run rotate @s facing entity @n[tag=rascal_attacker] feet
execute as @s on attacker run tag @s remove rascal_attacker

execute at @s run playsound minecraft:entity.witch.hurt neutral @a ~ ~ ~ 1 1.6