particle minecraft:sculk_soul ~ ~ ~ 0 0 0 .05 10 force
particle minecraft:sculk_charge_pop ~ ~ ~ 0 0 0 0 0 force
tp @s ^ ^ ^.5 facing entity @n[type=#minecraft:item_frames,predicate=deeper_dark:item_echo_shard_key,tag=!deeper_dark.active_portal,tag=!deeper_dark.invalid_portal] eyes
execute unless entity @n[type=#minecraft:item_frames,predicate=deeper_dark:item_echo_shard_key,tag=!deeper_dark.active_portal,tag=!deeper_dark.invalid_portal,distance=0..64] run kill @s