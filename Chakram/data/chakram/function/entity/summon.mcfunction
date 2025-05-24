execute unless score @s chakram_id matches 1.. run function chakram:id/generate

tag @s add chakram_user
execute anchored eyes positioned ^ ^-0.12 ^ summon minecraft:item_display run function chakram:entity/setup
tag @s remove chakram_user