data remove storage conflux_seasons:dialog_construction dialog

$data modify storage conflux_seasons:dialog_construction dialog set value {type:"multi_action",body:{type:"minecraft:plain_message",contents:[\
    {text: "You have "},$(sols_icon),{color:"$(sols_color)",shadow_color:0}]},\
    columns:$(cols),exit_action:{label:"Back",width:200},\
    title:[$(sols_icon),{text:" Shop "},$(sols_icon)],actions:[]}
# Might need to include inputs:[]

data modify storage conflux_seasons:dialog_construction temporary.items set from storage conflux_seasons:shop items
function conflux_seasons:shop/build_dialog_loop0