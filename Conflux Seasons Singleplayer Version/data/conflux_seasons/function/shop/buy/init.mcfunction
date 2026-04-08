execute store result storage conflux_seasons:shop temp.order int 1 run scoreboard players get @s trg_shop_buy

scoreboard players reset @s trg_shop_buy
scoreboard players enable @s trg_shop_buy

function conflux_seasons:shop/buy/find_item with storage conflux_seasons:shop temp