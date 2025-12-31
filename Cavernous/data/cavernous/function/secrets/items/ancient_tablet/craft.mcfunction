kill @s
execute if items entity @s contents diamond_helmet run return run loot spawn ~ ~0.5 ~ loot cavernous:secrets/items/ancient_mask
execute if items entity @s contents diamond_chestplate run return run loot spawn ~ ~0.5 ~ loot cavernous:secrets/items/ancient_robe
execute if items entity @s contents diamond_leggings run return run loot spawn ~ ~0.5 ~ loot cavernous:secrets/items/ancient_leggings
execute if items entity @s contents diamond_boots run return run loot spawn ~ ~0.5 ~ loot cavernous:secrets/items/ancient_boots
execute if items entity @s contents stone_sword run return run loot spawn ~ ~0.5 ~ loot cavernous:secrets/items/ancient_blade
execute if items entity @s contents shield run return run loot spawn ~ ~0.5 ~ loot cavernous:secrets/items/ancient_shield
execute if items entity @s contents crossbow run return run loot spawn ~ ~0.5 ~ loot cavernous:secrets/items/ancient_repeater

return fail