#check
scoreboard players add @s deeper_dark.var 0
execute in deeper_dark:deeper_dark run scoreboard players set @s deeper_dark.var 1
execute as @s[scores={deeper_dark.var=0}] run tellraw @a [{"text":"["},{"translate":"deeper_dark.name","click_event":{"action":"open_url","url":"https://www.planetminecraft.com/data-pack/deeper-dark-dimension/"},"color":"#007A8A","hover_event":{"action":"show_text","value":[{"text":"Go To Website"}]},"fallback":"Deeper Dark"},{"text":"] "},{"translate":"deeper_dark.gui.error.dim_not_exist","fallback":"Something went wrong. Please try rejoining the singleplayer world/restarting the server. If the issue persists, report the bug on Planet Minecraft.","color":"red"},{"text":" [err_dim_not_exist]","color":"red"}]
scoreboard players set @a deeper_dark.var 0

#shard
function deeper_dark:remove_shard_label
execute store result score x deeper_dark.var run data get entity @s Pos[0]
execute store result score y deeper_dark.var run data get entity @s Pos[1]
execute store result score z deeper_dark.var run data get entity @s Pos[2]
execute as @s at @s run item modify entity @s weapon.mainhand deeper_dark:key

#tp
execute if predicate deeper_dark:holding_lodestone_compass_checkpoint run return run function deeper_dark:checkpoints/run_lodestone
execute if predicate deeper_dark:holding_recovery_compass_checkpoint run return run function deeper_dark:checkpoints/run_recovery_compass

function deeper_dark:tp_in_without_compass