execute at @s run particle minecraft:dust_color_transition{from_color:[0.0,0.4,0.5],to_color:[0.0,0.0,0.0],scale:4} ~ ~1 ~ 0.5 0.5 0.5 5 30
execute at @s run playsound minecraft:ui.toast.out master @a ~ ~ ~ 4 1.4
execute at @s run playsound minecraft:block.big_dripleaf.tilt_up master @a ~ ~ ~ 1 0

attribute @s minecraft:sneaking_speed modifier remove chakram:shadowstepping
tag @s remove chakram.shadowstep_under_effects
scoreboard players reset @s chakram_shadowstep_timer_sneak_speed