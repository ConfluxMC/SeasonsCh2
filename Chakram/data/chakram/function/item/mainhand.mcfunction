tag @s add chakram_mainhand
function chakram:item/start
execute if entity @s[gamemode=!creative] run item replace entity @s weapon.mainhand with minecraft:air
tag @s remove chakram_mainhand