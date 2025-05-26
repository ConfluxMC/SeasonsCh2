# Check if near replaceable. If not, end function
execute at @s as @s align xyz unless predicate ariadnes_moss:nearby_replaceable run return fail

# Place moss near player
execute as @s at @s run fill ~0.4 ~0.5 ~0.4 ~-0.4 ~-1.5 ~-0.4 moss_block replace #ariadnes_moss:block_replaceable
execute as @s at @s run fill ~1.0 ~1.5 ~1.0 ~-1.0 ~-0.5 ~-1.0 moss_carpet replace #ariadnes_moss:carpet_replaceable[down=true]

# Player pays moss fee. Higher the level, greater chance of skipping payment (All logic in predicate)
execute as @s[predicate=ariadnes_moss:pay_moss] run clear @s #ariadnes_moss:moss_payment 1

# Play particles
particle minecraft:spore_blossom_air ~ ~0.2 ~ 0 0.2 0 1 8
particle minecraft:soul ~ ~0.2 ~ 0 0.2 0 0.05 2