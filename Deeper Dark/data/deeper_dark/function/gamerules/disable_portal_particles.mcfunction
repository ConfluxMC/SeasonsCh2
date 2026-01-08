execute as @a[predicate=deeper_dark:mainhand_echo_shard,predicate=!deeper_dark:in_deeper_dark,tag=!deeper_dark.tp_cooldown,gamemode=!spectator] at @s store success score @s deeper_dark.var run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 chain_command_block{Command:"deeper_dark.near_portal"} replace reinforced_deepslate
execute as @a[predicate=deeper_dark:mainhand_echo_shard,predicate=!deeper_dark:in_deeper_dark,tag=!deeper_dark.tp_cooldown,gamemode=!spectator] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 reinforced_deepslate replace chain_command_block{Command:"deeper_dark.near_portal"}
execute at @a[scores={deeper_dark.var=1}] run particle minecraft:sculk_soul ~ ~ ~ 2 2 2 0 1 force
execute at @a[scores={deeper_dark.var=1}] run playsound minecraft:block.sculk_catalyst.bloom ambient @a ~ ~ ~ .75 0
scoreboard players set @a deeper_dark.var 0

execute as @a[predicate=deeper_dark:mainhand_echo_shard_key,predicate=deeper_dark:in_deeper_dark,tag=!deeper_dark.tp_cooldown,gamemode=!spectator] at @s unless entity @e[type=minecraft:warden,predicate=deeper_dark:in_deeper_dark,distance=0..50] store success score @s deeper_dark.var run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 chain_command_block{Command:"deeper_dark.near_portal"} replace reinforced_deepslate
execute as @a[predicate=deeper_dark:mainhand_echo_shard_key,predicate=deeper_dark:in_deeper_dark,tag=!deeper_dark.tp_cooldown,gamemode=!spectator] at @s unless entity @e[type=minecraft:warden,predicate=deeper_dark:in_deeper_dark,distance=0..50] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 reinforced_deepslate replace chain_command_block{Command:"deeper_dark.near_portal"}
execute at @a[scores={deeper_dark.var=1}] run particle minecraft:sculk_soul ~ ~ ~ 2 2 2 0 1 force
execute at @a[scores={deeper_dark.var=1}] run playsound minecraft:block.sculk_catalyst.bloom ambient @a ~ ~ ~ .75 0
scoreboard players set @a deeper_dark.var 0