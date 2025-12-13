scoreboard players operation $chakram_temp chakram_id = @s chakram_id

data modify storage chakram:entity item set from entity @s item

#dont bother with hitbox check here, we know we're on the owner
execute if entity @s[tag=!chakram_creative] if entity @p[gamemode=!spectator,predicate=chakram:idmatch,predicate=!chakram:inventorynotfull] at @s run function chakram:item/spawn with storage chakram:entity
execute if entity @s[tag=chakram_mainhand,tag=!chakram_creative] as @p[gamemode=!spectator,predicate=chakram:idmatch,predicate=chakram:inventorynotfull] at @s run function chakram:pickup/mainhand with storage chakram:entity item
execute if entity @s[tag=chakram_offhand,tag=!chakram_creative] as @p[gamemode=!spectator,predicate=chakram:idmatch,predicate=chakram:inventorynotfull] at @s run function chakram:pickup/offhand with storage chakram:entity item

#teleport below world to avoid triggering sculk sensors on death
tp @s ~ ~-500 ~
kill @s