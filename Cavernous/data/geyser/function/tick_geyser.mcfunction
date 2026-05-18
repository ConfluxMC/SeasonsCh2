# As Geyser
    execute as @s[tag=placed] run function geyser:geyser_run

# Placing
    execute as @s[tag=!placed] run function geyser:place_check
    # Places naturally generated geysers
    execute as @s[tag=!placed,tag=generated] run function geyser:place_geyser

# Breaking
    execute as @s[tag=placed] at @s unless block ~ ~-1 ~ basalt run function geyser:break_geyser