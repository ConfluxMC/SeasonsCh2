# chase the leasher
rotate @s facing entity @n[tag=rascal_leasher] feet
execute unless entity @e[tag=rascal_leasher,distance=..2] run tp ^ ^ ^0.35
execute unless entity @e[tag=rascal_leasher,distance=..2] run tag @n[type=armor_stand,tag=rascal_stand,distance=..0.5,tag=!rascal_moving,predicate=rascal:rascal_id] add rascal_moving
execute unless entity @e[tag=rascal_leasher,distance=..2] as @n[type=armor_stand,tag=rascal_stand,distance=..0.5,predicate=rascal:rascal_id] at @s run function rascal:move/moving

# countdown (or countup I guess) bite cooldown
scoreboard players add @s rascal_bite_cooldown 1

# bite
execute as @s[scores={rascal_bite_cooldown=1}] at @s if entity @e[tag=rascal_leasher,distance=..2] run playsound rascal:entity.rascal.bite neutral @a ~ ~ ~
execute as @s[scores={rascal_bite_cooldown=1}] at @s if entity @e[tag=rascal_leasher,distance=..2] run particle minecraft:crit ~ ~0.2 ~ 0.2 0.2 0.2 0.5 3 normal @a
execute as @s[scores={rascal_bite_cooldown=1}] at @s if entity @e[tag=rascal_leasher,distance=..2] run return run damage @n[tag=rascal_leasher] 3 minecraft:mob_attack by @s

# swallow
execute as @s[scores={rascal_bite_cooldown=11}] at @s if entity @e[tag=rascal_leasher,distance=..1.8] run return run playsound rascal:entity.rascal.eat neutral @a ~ ~ ~ 0.7
execute as @s[scores={rascal_bite_cooldown=18}] at @s if entity @e[tag=rascal_leasher,distance=..1] run return run playsound rascal:entity.rascal.swallow neutral @a ~ ~ ~ 0.1

# reset cooldown
scoreboard players set @s[scores={rascal_bite_cooldown=28..}] rascal_bite_cooldown 0