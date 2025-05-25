# Check if near replaeable. If not, end function
execute as @s at @s unless function ariadnes_moss:is_near_replaceable run return fail

# Place moss near player
execute as @s at @s run fill ~0.3 ~0.5 ~0.3 ~-0.3 ~-1.5 ~-0.3 moss_block replace #ariadnes_moss:block_replaceable
execute as @s at @s run fill ~0.3 ~1.5 ~0.3 ~-0.3 ~-0.5 ~-0.3 moss_carpet replace #ariadnes_moss:carpet_replaceable[down=true]

# Player pays moss fee. Higher the level, greater chance of skipping payment (All logic in predicate)
execute as @s[predicate=ariadnes_moss:pay_moss] run clear @s #ariadnes_moss:moss_payment 1