tag @s[type=!minecraft:player] add cavernous_exit_portal.locator
execute store result score @s cavernous_exit_portal.distx+1 run data get entity @s Pos[0]
execute store result score @s cavernous_exit_portal.distz+1 run data get entity @s Pos[2]
scoreboard players set @s cavernous_exit_portal.distx-1 16
scoreboard players operation @s cavernous_exit_portal.distx+1 %= @s cavernous_exit_portal.distx-1
scoreboard players operation @s cavernous_exit_portal.distz+1 %= @s cavernous_exit_portal.distx-1
execute store result score @s cavernous_exit_portal.distx-1 run data get entity @s Pos[0]
execute store result score @s cavernous_exit_portal.distz-1 run data get entity @s Pos[2]
scoreboard players operation @s cavernous_exit_portal.distx-1 -= @s cavernous_exit_portal.distx+1
scoreboard players operation @s cavernous_exit_portal.distz-1 -= @s cavernous_exit_portal.distz+1
execute store result entity @s Pos[0] double 1 run scoreboard players get @s cavernous_exit_portal.distx-1
execute store result entity @s Pos[2] double 1 run scoreboard players get @s cavernous_exit_portal.distz-1
execute at @s run tp @s ~1.5 ~ ~1.5
scoreboard players reset @s
execute at @s run function cavernous:myst/portal_activation/exit_portal_locator/locate