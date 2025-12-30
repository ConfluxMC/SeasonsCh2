scoreboard players add @s portal.activation_timer 1
particle dust{color:[0.443, 0.055, 0.055],scale:1.5} ~ ~ ~ 0.15 0.15 0.15 0 3 force @a
execute if predicate cavernous:chance_25 run playsound minecraft:block.bubble_column.upwards_ambient master @a ~ ~ ~ 0.6 0.3 0

execute if score @s portal.activation_timer matches 80 as @n[type=marker,tag=conduit,scores={conduit.has_activated=0}] at @s run function cavernous:myst/portal_activation/conduit_activate
execute if score @s portal.activation_timer matches 120 as @n[type=marker,tag=conduit,scores={conduit.has_activated=0}] at @s run function cavernous:myst/portal_activation/conduit_activate
execute if score @s portal.activation_timer matches 160 as @n[type=marker,tag=conduit,scores={conduit.has_activated=0}] at @s run function cavernous:myst/portal_activation/conduit_activate
execute if score @s portal.activation_timer matches 200 as @n[type=marker,tag=conduit,scores={conduit.has_activated=0}] at @s run function cavernous:myst/portal_activation/conduit_activate

execute if score @s portal.activation_timer matches 300 as @e[type=marker,tag=conduit,limit=4,sort=nearest] at @s run summon lightning_bolt ~ ~ ~

execute if score @s portal.activation_timer matches 310.. run function cavernous:myst/portal_activation/end