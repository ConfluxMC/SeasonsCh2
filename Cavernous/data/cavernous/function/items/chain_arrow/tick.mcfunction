execute if score @s chain_arrow.timer matches 9 run return run kill @s

execute if function cavernous:items/chain_arrow/place run playsound block.chain.place block @a ~ ~ ~ 1 1 0

scoreboard players add @s chain_arrow.timer 1