$scoreboard players set shop_cost solstice_shards $(cost)
$execute if score @s solstice_shards >= shop_cost solstice_shards run return run function conflux_seasons:shop/buy/deliver {item: $(item), cost: $(cost), label: $(label)}

# If player had enough funds, the function would have returned and this code would not be reached
# Lack of funds
playsound minecraft:entity.villager.no ui @s ~ ~ ~
tellraw @s [{text:"You do not have enough ",color:"red"},{text:"Solstice Shards",color:"light_purple"},{text:" to buy this!",color:"red"}]