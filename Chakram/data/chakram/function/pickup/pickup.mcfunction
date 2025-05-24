scoreboard players operation $chakram_temp chakram_id = @s chakram_id

data modify storage chakram:entity components set from entity @s item.components

#dont bother with hitbox check here, we know we're on the owner
execute if entity @s[tag=chakram_mainhand,tag=!chakram_creative] as @p[gamemode=!spectator,predicate=chakram:idmatch] at @s run function chakram:pickup/mainhand with storage chakram:entity
execute if entity @s[tag=chakram_offhand,tag=!chakram_creative] as @p[gamemode=!spectator,predicate=chakram:idmatch] at @s run function chakram:pickup/offhand with storage chakram:entity
kill @s