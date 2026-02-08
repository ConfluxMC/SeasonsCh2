# Remove anger
data remove entity @s anger

# Speed up the dig cooldown
execute store result entity @s Brain.memories."minecraft:dig_cooldown".ttl long 0.99 run data get entity @s Brain.memories."minecraft:dig_cooldown".ttl