data modify entity @s pickup set value 0b
tag @s add chain_arrow_started

execute if predicate cavernous:arrows/iron_chain run return run tag @s add chain_arrow_iron
execute if predicate cavernous:arrows/copper_chain run return run tag @s add chain_arrow_copper
execute if predicate cavernous:arrows/waxed_copper_chain run return run tag @s add chain_arrow_waxed_copper