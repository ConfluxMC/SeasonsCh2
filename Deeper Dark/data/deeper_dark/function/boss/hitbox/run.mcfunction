effect clear @s glowing
execute if data entity @s {HurtTime:1s} run function deeper_dark:boss/hitbox/hurt
execute store result bossbar minecraft:deeper_dark/boss value run data get entity @s Health

execute on attacker run tag @s[predicate=!deeper_dark:sculk_entity] add deeper_dark.boss.target
tag @s remove deeper_dark.boss.target

# Move displays 
tp @e[type=#deeper_dark:defender_block_part,tag=deeper_dark.boss.block.on,limit=49,sort=nearest] ~ ~.5 ~