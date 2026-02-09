effect give @s minecraft:weakness 1 4 true
effect give @s minecraft:slowness 1 1 true

# Check if dig_cooldown exists or else constant nbt modification prevents it from digging down
execute if entity @s[nbt={Brain:{memories:{"minecraft:dig_cooldown":{}}}}] run function minotower:warden_bell/pacify_warden_nbt