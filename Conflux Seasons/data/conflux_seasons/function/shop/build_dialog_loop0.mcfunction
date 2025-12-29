# Put meta data into temp item so we can use things like sols icon
data modify storage conflux_seasons:dialog_construction temporary.items[-1] merge from storage conflux_seasons:shop meta

# Construct the dialog action for the current button
function conflux_seasons:shop/build_dialog_loop1 with storage conflux_seasons:dialog_construction temporary.items[-1]