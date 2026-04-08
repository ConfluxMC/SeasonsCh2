# Remove current item from temp list
data remove storage conflux_seasons:dialog_construction temporary.items[-1]

# Construct the dialog action for this item
$data modify storage conflux_seasons:dialog_construction dialog.actions prepend value {label:[\
    $(icon), $(label), $(sols_icon),{text:"$(cost)",color:"$(sols_color)",shadow_color:0}],\
    action:{type:"minecraft:custom",id:"conflux_seasons:shop_buy",payload:{label:$(label),index:$(key)}}}

# Move onto the next item
execute if data storage conflux_seasons:dialog_construction temporary.items[-1] run function conflux_seasons:shop/build_dialog_loop0