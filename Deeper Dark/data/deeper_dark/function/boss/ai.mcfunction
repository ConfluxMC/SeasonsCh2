scoreboard players set @a[distance=0..25] deeper_dark.ancient_dark_active 0
execute as @e[type=minecraft:warden,predicate=deeper_dark:in_deeper_dark,distance=0..25] run data remove entity @s Brain.memories.minecraft:dig_cooldown


execute as @e[predicate=deeper_dark:living,predicate=deeper_dark:touching_sculk,predicate=!deeper_dark:sculk_entity,distance=0..30] run tag @s add deeper_dark.boss.target

bossbar set minecraft:deeper_dark/boss players @a[distance=0..30]
execute as @n[type=ghast,tag=deeper_dark.boss_hitbox] at @s run function deeper_dark:boss/hitbox/run

execute unless score @s deeper_dark.tentacle_attack_time matches 1.. run rotate @s facing entity @n[tag=deeper_dark.boss.target,distance=0..30]
#say @n[tag=deeper_dark.boss.target,distance=0..30]

### attacks

scoreboard players remove @s deeper_dark.boss_attack_cooldown 1

# If attack cooldown is off, choose an attack
execute unless score @s deeper_dark.boss_attack_cooldown matches 1.. run function deeper_dark:boss/attacks/start

execute if score @s deeper_dark.tentacle_attack_time matches 1.. run scoreboard players remove @s deeper_dark.tentacle_attack_time 1
execute if score @s deeper_dark.tentacle_attack_time matches 40 at @n[tag=deeper_dark.boss.target] run summon minecraft:marker ~ ~ ~ {Tags:["deeper_dark.boss.target_point"]}
execute if score @s deeper_dark.tentacle_attack_time matches 40.. unless entity @n[tag=deeper_dark.boss.target,distance=0..30] run scoreboard players set @s deeper_dark.boss_attack_cooldown 0
execute if score @s deeper_dark.tentacle_attack_time matches 40.. unless entity @n[tag=deeper_dark.boss.target,distance=0..30] run scoreboard players set @s deeper_dark.tentacle_attack_time 0
execute if score @s deeper_dark.tentacle_attack_time matches 0 run tag @n[type=marker,tag=deeper_dark.boss.target_point] add deeper_dark.silent_despawn
execute if score @s deeper_dark.tentacle_attack_time matches 40 run tag @n[type=ghast,tag=deeper_dark.boss.attack_done] remove deeper_dark.boss.attack_done


execute if score @s deeper_dark.sonicattack matches 1.. run scoreboard players remove @s deeper_dark.sonicattack 1
execute if score @s deeper_dark.sonicattack matches 2.. unless entity @n[tag=deeper_dark.boss.target,distance=0..30] run scoreboard players set @s deeper_dark.boss_attack_cooldown 0
execute if score @s deeper_dark.sonicattack matches 2.. unless entity @n[tag=deeper_dark.boss.target,distance=0..30] run scoreboard players set @s deeper_dark.tentacle_attack_time 0
execute if score @s deeper_dark.sonicattack matches 1 as @n[type=ghast,tag=deeper_dark.boss_hitbox] at @s facing entity @n[tag=deeper_dark.boss.target] eyes run function deeper_dark:boss/attacks/sonicattack


# Fill area with sculk while not attacking
execute as @e[type=marker,tag=deeper_dark.boss.attack.sculk_charge] at @s run function deeper_dark:boss/attacks/sculk_charge_run


#spawn tentacle
function deeper_dark:boss/tentacle/validate
execute at @e[type=block_display,tag=deeper_dark.selected_all] run scoreboard players add @s deeper_dark.var 1
execute unless score @s deeper_dark.var matches 6 run function deeper_dark:boss/tentacle/setup
scoreboard players set @e[type=block_display,tag=deeper_dark.selected_all] deeper_dark.var 0


#slam attack
tag @s add deeper_dark.selected
execute if score @s deeper_dark.tentacle_attack_time matches 41.. run function deeper_dark:boss/attacks/slam_1
execute if score @s deeper_dark.tentacle_attack_time matches 1..40 run tag @e[type=minecraft:block_display,tag=deeper_dark.selected_all] add deeper_dark.boss.slam_2
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_all] at @s run function deeper_dark:boss/attacks/slam_process

execute as @n[type=ghast,tag=deeper_dark.boss_hitbox] at @s if entity @n[type=marker,tag=deeper_dark.boss.target_point,distance=0..4] run function deeper_dark:boss/hitbox/slam




#animate
tp @n[type=minecraft:block_display,tag=deeper_dark.selected_all,tag=deeper_dark.boss_segment.1] ~ ~-0.5 ~
execute as @e[type=minecraft:block_display,tag=deeper_dark.selected_all] at @s run function deeper_dark:tentacle/move

#die
#execute unless block ~ ~ ~ sculk_sensor run function deeper_dark:tentacle/break
#untag
scoreboard players set @e[type=block_display,tag=deeper_dark.selected_all] deeper_dark.var 1
tag @s[tag=deeper_dark.selected] remove deeper_dark.selected
tag @e[type=block_display,tag=deeper_dark.selected_all] remove deeper_dark.selected_all
tag @e[tag=deeper_dark.boss.target] remove deeper_dark.boss.target