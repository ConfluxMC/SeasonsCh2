data modify storage deeper_dark:data warden_tracker.slot set value weapon.mainhand
execute if items entity @s weapon.mainhand minecraft:compass[minecraft:enchantment_glint_override] run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ .5 1
function deeper_dark:items/warden_tracker/update/compass with storage deeper_dark:data warden_tracker