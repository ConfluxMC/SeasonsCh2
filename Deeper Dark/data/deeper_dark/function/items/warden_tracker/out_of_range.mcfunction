playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ .5 0

execute if items entity @s weapon.mainhand minecraft:compass[minecraft:custom_data~{deeper_dark_warden_tracker:1b}] run item modify entity @s weapon.mainhand deeper_dark:untrack_warden_tracker
execute if items entity @s weapon.offhand minecraft:compass[minecraft:custom_data~{deeper_dark_warden_tracker:1b}] run item modify entity @s weapon.offhand deeper_dark:untrack_warden_tracker