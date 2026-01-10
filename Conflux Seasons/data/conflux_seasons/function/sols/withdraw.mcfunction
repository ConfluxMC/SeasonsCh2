execute if score @s solstice_shards < @s trg_shop_withdraw_sols run return run function conflux_seasons:sols/withdraw_fail

loot give @s loot conflux_seasons:solstice_shard
scoreboard players operation @s solstice_shards -= @s trg_shop_withdraw_sols
scoreboard players reset @s trg_shop_withdraw_sols
scoreboard players enable @s trg_shop_withdraw_sols


playsound minecraft:block.amethyst_block.step ui @s ~ ~ ~ 10 1.4