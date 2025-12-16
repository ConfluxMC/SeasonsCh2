particle minecraft:electric_spark ~ ~3.5 ~ 0.5 0.1 0.5 0.1 1

# Check if dig_cooldown exists or else constant nbt modification prevents it from digging down
execute if entity @s[nbt={Brain:{memories:{"minecraft:dig_cooldown":{}}}}] run function hollow_earth:warden_pacifier/pacify_warden_nbt