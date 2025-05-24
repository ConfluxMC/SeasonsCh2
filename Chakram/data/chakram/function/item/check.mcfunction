#cooldown
execute store result score @s chakram_throw_cooldown run time query gametime
scoreboard players add @s chakram_throw_cooldown 5
schedule function chakram:item/cooldown 5t append

execute if predicate chakram:item/mainhand run return run function chakram:item/mainhand
execute if predicate chakram:item/offhand run function chakram:item/offhand
