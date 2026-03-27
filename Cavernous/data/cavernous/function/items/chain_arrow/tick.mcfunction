execute if score @s chain_arrow.timer matches 9.. run return run kill @s
scoreboard players add @s chain_arrow.timer 1

execute as @s[tag=chain_arrow_iron,tag=!chain_arrow_obstructed] if function cavernous:items/chain_arrow/place_iron run return run playsound block.chain.place block @a ~ ~ ~ 1 1
execute as @s[tag=chain_arrow_copper,tag=!chain_arrow_obstructed] if function cavernous:items/chain_arrow/place_copper run return run playsound block.chain.place block @a ~ ~ ~ 1 1
execute as @s[tag=chain_arrow_waxed_copper,tag=!chain_arrow_obstructed] if function cavernous:items/chain_arrow/place_waxed_copper run return run playsound block.chain.place block @a ~ ~ ~ 1 1

execute as @s[tag=chain_arrow_iron,tag=chain_arrow_obstructed] run return run summon item ^ ^-0.5 ^-0.2 {Item:{id:iron_chain}}
execute as @s[tag=chain_arrow_copper,tag=chain_arrow_obstructed] run return run summon item ^ ^-0.5 ^-0.2 {Item:{id:copper_chain}}
execute as @s[tag=chain_arrow_waxed_copper,tag=chain_arrow_obstructed] run return run summon item ^ ^-0.5 ^-0.2 {Item:{id:waxed_copper_chain}}

# If block below is chains, go to the lowest chain block
execute if block ~ ~-1 ~ #minecraft:chains run return run function cavernous:items/chain_arrow/goto_lowest_chain
# If already at lowest chain at first tick, don't count as obstructed
execute if score @s chain_arrow.timer matches 1 if block ~ ~ ~ #minecraft:chains run return 1

# If it reaches here, it means it didn't place a chain, which means it hit a block it cannot replace.
# So prevent it spawning more chains underneath by tagging it as obstructed

tag @s add chain_arrow_obstructed