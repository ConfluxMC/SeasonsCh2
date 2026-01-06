function deeper_dark:remove_shard_label
execute store result score x deeper_dark.var run data get entity @s Pos[0]
execute store result score y deeper_dark.var run data get entity @s Pos[1]
execute store result score z deeper_dark.var run data get entity @s Pos[2]
item modify entity @s weapon.mainhand deeper_dark:key