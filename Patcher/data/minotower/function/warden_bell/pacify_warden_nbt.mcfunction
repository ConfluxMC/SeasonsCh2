# Remove anger
data remove entity @s anger

# Speed up the dig cooldown
execute store result entity @s Brain.memories."minecraft:dig_cooldown".ttl long 0.97 run data get entity @s Brain.memories."minecraft:dig_cooldown".ttl

# Reset sniff cooldown
data modify entity @s Brain.memories."minecraft:sniff_cooldown" set value {value:{},ttl:200L}