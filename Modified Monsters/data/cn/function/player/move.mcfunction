execute store result score @s cn_gamemode run data get entity @s playerGameType
tp @s ~ ~1000 ~

#grant immunity
gamemode creative

$scoreboard players set @s cn_move_power $(power)
function cn:player/power

#remove immunity
function cn:player/return_gamemode

tp @s ~ ~ ~
