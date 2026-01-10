playsound minecraft:entity.villager.no ui @s ~ ~ ~
tellraw @s [{text:"You do not have enough ",color:"red"},{text:"Solstice Shards",color:"light_purple"},{text:" to withdraw!",color:"red"}]

scoreboard players reset @s trg_shop_withdraw_sols
scoreboard players enable @s trg_shop_withdraw_sols