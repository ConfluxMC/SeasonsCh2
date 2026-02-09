execute if predicate minotower:sneaking run function minotower:breeze_bell_summon_circle
execute unless predicate minotower:sneaking anchored eyes run function minotower:breeze_bell_summon_front

execute as @e[type=minecraft:wind_charge,tag=bell_wind,distance=..4] run data modify entity @s Owner set from entity @s UUID
tag @e[type=minecraft:wind_charge,tag=bell_wind,distance=..4] remove bell_wind

scoreboard players set @s minotower.bell_active_countdown 60

advancement revoke @s only minotower:use_breeze_bell