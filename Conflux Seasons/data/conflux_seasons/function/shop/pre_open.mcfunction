# Store the player's balance in temp storage
execute store result storage conflux_seasons:dialog_construction temporary.wallet int 1 run scoreboard players get @s solstice_shards

# Convert balance to string and put into constructed dialog's balance display
data modify storage conflux_seasons:dialog_construction dialog.body.contents[2].text set string storage conflux_seasons:dialog_construction temporary.wallet
data modify storage conflux_seasons:dialog_construction dialog.inputs[0].end set from storage conflux_seasons:dialog_construction temporary.wallet

function conflux_seasons:shop/open with storage conflux_seasons:dialog_construction