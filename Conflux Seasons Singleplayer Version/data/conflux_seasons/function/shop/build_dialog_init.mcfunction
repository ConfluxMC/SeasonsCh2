data remove storage conflux_seasons:dialog_construction dialog

$data modify storage conflux_seasons:dialog_construction dialog set value {type:"multi_action",body:{type:"minecraft:plain_message",contents:[\
    {text: "You have "},$(sols_icon),{color:"$(sols_color)",shadow_color:0}]},\
    inputs:[{type: "number_range",key: "withdraw_range",\
      label: [{text: "Withdraw Solstice Shards"},$(sols_icon)],\
      start:1,end:1,step:1,initial:1}],\
    columns:$(cols),exit_action:{label:"Exit",width:200},\
    title:[$(sols_icon),{text:" Shop "},$(sols_icon)],actions:[]}

# Add all the items
data modify storage conflux_seasons:dialog_construction temporary.items set from storage conflux_seasons:shop items
function conflux_seasons:shop/build_dialog_loop0

# Add withdraw button to beginning
$data modify storage conflux_seasons:dialog_construction dialog.actions prepend value {label:[{text:"Withdraw "}, $(sols_icon)]}

function conflux_seasons:shop/build_dialog_insert_withdraw_action