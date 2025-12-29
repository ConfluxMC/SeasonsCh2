scoreboard objectives add rascal_can_be_caught_cooldown dummy
scoreboard objectives add rascal_stay_invis_timer dummy
scoreboard objectives add rascal_times_found dummy
scoreboard objectives add rascal_bite_cooldown dummy
scoreboard objectives add rascal_arm_rotation_left dummy
scoreboard objectives add rascal_arm_rotation_right dummy

# The way rascals target for throwing the defense potion requires some blocks around 0 0 0 to be loaded.
forceload add 1 1 -1 -1

#Initiate spawn attempt loop
schedule function rascal:attempt_spawn 60s