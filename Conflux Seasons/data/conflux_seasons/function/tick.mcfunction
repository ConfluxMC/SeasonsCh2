execute as @a[scores={trg_shop_open=1..}] run function conflux_seasons:shop/pre_open
execute as @a[scores={trg_shop_buy=1..}] at @s run function conflux_seasons:shop/buy/init
execute as @a[scores={trg_shop_withdraw_sols=1..}] at @s run function conflux_seasons:sols/withdraw