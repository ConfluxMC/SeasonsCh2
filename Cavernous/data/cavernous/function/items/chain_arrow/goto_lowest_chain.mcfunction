# If no chains below, success and teleport
execute unless block ~ ~-1 ~ #minecraft:chains run return run tp @s ~ ~ ~

# if chains below, fail and try the next block down

execute positioned ~ ~-1 ~ run function cavernous:items/chain_arrow/goto_lowest_chain

return fail