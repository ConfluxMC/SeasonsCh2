# Show display with warning level
execute unless score @s deeper_dark.sonicattack matches 1.. run function deeper_dark:items/warden_tracker/display

# if warden is nearby, track
execute if entity @n[type=minecraft:warden,distance=0..64] run return run function deeper_dark:items/warden_tracker/in_range

# otherwise, unlink (if compasses are not already unlinked)
execute if items entity @s weapon.* compass[!enchantment_glint_override,custom_data~{deeper_dark_warden_tracker:1b}] run function deeper_dark:items/warden_tracker/out_of_range