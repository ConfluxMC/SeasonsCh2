loot spawn ~ ~ ~ loot deeper_dark:items/altar_fragment
scoreboard players remove @s deeper_dark.sculk_converter.fragments 1

# Loop until it has dropped all the fragments that have gone into it
execute if score @s deeper_dark.sculk_converter.fragments matches 1.. run function deeper_dark:sculk_converter/remove_fragment
