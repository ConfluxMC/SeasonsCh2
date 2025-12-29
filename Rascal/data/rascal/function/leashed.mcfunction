# chase the leasher
rotate @s facing entity @n[tag=rascal_leasher] feet
execute unless entity @e[tag=rascal_leasher,distance=..2] run tp ^ ^ ^0.35
execute unless entity @e[tag=rascal_leasher,distance=..2] run tag @n[distance=..0.5,type=armor_stand,tag=rascal_stand,tag=!rascal_moving] add rascal_moving
execute unless entity @e[tag=rascal_leasher,distance=..2] as @n[type=armor_stand,tag=rascal_stand,distance=..0.5] at @s run function rascal:move/moving

# countdown (or countup I guess) bite cooldown
scoreboard players add @s rascal_bite_cooldown 1

# bite
execute as @s[scores={rascal_bite_cooldown=1}] at @s if entity @e[tag=rascal_leasher,distance=..2] run playsound minecraft:entity.fox.bite hostile @a ~ ~ ~ 1 0.8
execute as @s[scores={rascal_bite_cooldown=1}] at @s if entity @e[tag=rascal_leasher,distance=..2] run particle minecraft:crit ~ ~0.2 ~ 0.2 0.2 0.2 0.5 3 normal @a
execute as @s[scores={rascal_bite_cooldown=1}] at @s if entity @e[tag=rascal_leasher,distance=..2] run return run damage @n[tag=rascal_leasher] 3 minecraft:mob_attack by @s

# swallow
execute as @s[scores={rascal_bite_cooldown=11}] at @s if entity @e[tag=rascal_leasher,distance=..1.8] run return run playsound minecraft:entity.fox.eat hostile @a ~ ~ ~ 0.7 0.8
execute as @s[scores={rascal_bite_cooldown=18}] at @s if entity @e[tag=rascal_leasher,distance=..1] run return run playsound minecraft:entity.witch.drink hostile @a ~ ~ ~ 0.1 0.8

# reset cooldown
scoreboard players set @s[scores={rascal_bite_cooldown=28..}] rascal_bite_cooldown 0