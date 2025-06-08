# chase the leasher
execute as @s run rotate @s facing entity @n[tag=rascal_leasher] feet
execute as @s at @s unless entity @e[tag=rascal_leasher,distance=..1] run tp ^ ^ ^0.35

#countdown (or countup I guess) bite cooldown
scoreboard players add @s rascal_bite_cooldown 1

#bite
execute as @s[scores={rascal_bite_cooldown=1}] at @s if entity @e[tag=rascal_leasher,distance=..1] run damage @n[tag=rascal_leasher] 2 minecraft:mob_attack by @s
execute as @s[scores={rascal_bite_cooldown=1}] at @s if entity @e[tag=rascal_leasher,distance=..1] run playsound minecraft:entity.fox.bite neutral @a ~ ~ ~ 1 0.8
execute as @s[scores={rascal_bite_cooldown=1}] at @s if entity @e[tag=rascal_leasher,distance=..1] run particle minecraft:crit ~ ~0.2 ~ 0.2 0.2 0.2 0.5 3 normal @a

#swallow
execute as @s[scores={rascal_bite_cooldown=11}] at @s if entity @e[tag=rascal_leasher,distance=..1.6] run playsound minecraft:entity.fox.eat neutral @a ~ ~ ~ 0.7 0.8
execute as @s[scores={rascal_bite_cooldown=18}] at @s if entity @e[tag=rascal_leasher,distance=..0.8] run playsound minecraft:entity.witch.drink neutral @a ~ ~ ~ 0.1 0.8

#reset cooldown
execute as @s[scores={rascal_bite_cooldown=36..}] at @s if entity @e[tag=rascal_leasher,distance=..1] run scoreboard players set @s rascal_bite_cooldown 0