execute as @s[predicate=minotower:on_museum_pedestal] on origin run advancement grant @s only minotower:visible/museum_deeper_dark
function deeper_dark:itemstack_remove_1
execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:["deeper_dark.anticatalyst"],CustomName:{"translate":"item.deeper_dark.anticatalyst","fallback":"Anticatalyst"}}
setblock ~ ~ ~ minecraft:cobbled_deepslate
execute align xyz positioned ~.5 ~.5 ~.5 run function deeper_dark:anticatalyst/block_base
execute align xyz positioned ~.5 ~.5 ~.5 run function deeper_dark:anticatalyst/block_glow