tag @s add deeper_dark.tp_cooldown

#item
execute if score Game deeper_dark.var matches 1 at @s[predicate=deeper_dark:mainhand_echo_shard] run function deeper_dark:portal/label_exit_deeper_dark

execute if score Game deeper_dark.var matches 0 at @s[predicate=deeper_dark:mainhand_echo_shard] run function deeper_dark:portal/label_enter_deeper_dark



$execute if score Game deeper_dark.var matches 0 in $(dim) run tp @s $(x) $(y) $(z)
$execute if score Game deeper_dark.var matches 1 in deeper_dark:deeper_dark run tp @s $(x) $(y) $(z)
execute at @s run playsound minecraft:entity.warden.sonic_boom block @s ~ ~ ~ 1 0
execute at @s run playsound minecraft:block.portal.travel block @s ~ ~ ~ 1 1
execute at @s run playsound minecraft:block.sculk_shrieker.shriek block @s ~ ~ ~ 1 0
execute at @s run playsound minecraft:block.respawn_anchor.set_spawn block @s ~ ~ ~ 1 0



execute if score Game deeper_dark.var matches 1 at @s[predicate=deeper_dark:mainhand_echo_shard] run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 1 2 1

#light
$execute if score Game deeper_dark.var matches 0 in $(dim) run summon minecraft:marker $(x) $(y) $(z) {Rotation:[0F,0F],Tags:["deeper_dark.portal_sync"]}
$execute if score Game deeper_dark.var matches 0 in $(dim) run summon minecraft:marker $(x) $(y) $(z) {Rotation:[90F,0F],Tags:["deeper_dark.portal_sync"]}
$execute if score Game deeper_dark.var matches 1 in deeper_dark:deeper_dark run summon minecraft:marker $(x) $(y) $(z) {Rotation:[0F,0F],Tags:["deeper_dark.portal_sync"]}
$execute if score Game deeper_dark.var matches 1 in deeper_dark:deeper_dark run summon minecraft:marker $(x) $(y) $(z) {Rotation:[90F,0F],Tags:["deeper_dark.portal_sync"]}

