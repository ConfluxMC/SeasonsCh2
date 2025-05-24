tag @s add chakram_offhand
function chakram:item/start
execute if entity @s[gamemode=!creative] run item replace entity @s weapon.offhand with minecraft:air
tag @s remove chakram_offhand