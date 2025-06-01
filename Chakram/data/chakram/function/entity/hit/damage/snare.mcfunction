scoreboard objectives add chakram_snare_temp dummy

scoreboard players set $2 chakram_snare_temp 3

# Reduce damage to a third (then double it to make it 2/3rds damage)
scoreboard players operation @s chakram_damage /= $2 chakram_snare_temp
scoreboard players operation @s chakram_damage += @s chakram_damage

scoreboard objectives remove chakram_snare_temp

# Damage passed to entity in calculate_finish

# Apply snare
effect give @n[dx=0,type=!#chakram:raybanned,tag=!smithed.strict] minecraft:levitation 3 0 false
effect give @n[dx=0,type=!#chakram:raybanned,tag=!smithed.strict] minecraft:slowness 3 0 true
effect give @n[dx=0,type=!#chakram:raybanned,tag=!smithed.strict] minecraft:slow_falling 5 0 true