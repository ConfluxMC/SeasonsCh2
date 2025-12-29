# Backup in case defaults are restored accidentally
data modify storage conflux_seasons:shop_backup backup set from storage conflux_seasons:shop

data modify storage conflux_seasons:shop meta set value {\
	sols_icon:{atlas: "minecraft:items", sprite: "conflux_seasons:item/solstice_shard", shadow_color: 0},\
	sols_color:"#ad31b0",\
	cols:3\
}