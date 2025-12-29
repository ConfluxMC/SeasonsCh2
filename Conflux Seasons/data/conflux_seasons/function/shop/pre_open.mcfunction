scoreboard players reset @s trg_shop_open
scoreboard players enable @s trg_shop_open

# Store the player's balance in temp storage
execute store result storage conflux_seasons:dialog_construction temporary.wallet int 1 run scoreboard players get @s solstice_shards

# Convert balance to string and put into constructed dialog's balance display
data modify storage conflux_seasons:dialog_construction dialog.body.contents[2].text set string storage conflux_seasons:dialog_construction temporary.wallet

function conflux_seasons:shop/open with storage conflux_seasons:dialog_construction