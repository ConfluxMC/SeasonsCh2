function deeper_dark:valid_spawn/setup

execute in deeper_dark:deeper_dark run function deeper_dark:teleport with storage deeper_dark:data lastfoundstructure2
execute at @s run spreadplayers ~ ~ 0 10 under 63 false @s[predicate=deeper_dark:in_deeper_dark]

#saftey
execute at @s run function deeper_dark:valid_spawn/safety_check_loaded