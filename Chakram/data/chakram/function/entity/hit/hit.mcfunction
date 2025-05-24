scoreboard players operation $chakram_temp chakram_id = @s chakram_id
execute if entity @p[dx=0,gamemode=!spectator,predicate=chakram:idmatch] run return run function chakram:entity/hit/owner

#not returning
execute if entity @s[tag=!chakram_return] run function chakram:entity/hit/not_returning