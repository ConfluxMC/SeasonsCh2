scoreboard objectives add trg_shop_open trigger
scoreboard objectives add trg_shop_buy trigger
scoreboard objectives add trg_shop_withdraw_sols trigger
scoreboard objectives add shop_cost dummy

scoreboard objectives add solstice_shards dummy Sols

# Advancement reset counters
#scoreboard objectives add conflux_seasons.week dummy
#scoreboard objectives add conflux_seasons.day dummy

#execute unless score .global conflux_seasons.week matches 1.. run scoreboard players set .global conflux_seasons.week 1
#execute unless score .global conflux_seasons.day matches 1.. run scoreboard players set .global conflux_seasons.day 1