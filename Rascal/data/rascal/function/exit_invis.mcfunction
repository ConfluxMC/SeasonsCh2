tag @s remove rascal_is_invis
scoreboard players reset @s rascal_stay_invis_timer

execute at @s run particle minecraft:dust_color_transition{from_color:[0.0,0.4,0.5],to_color:[0.0,0.0,0.0],scale:2} ~ ~1 ~ 0.5 0.5 0.5 0 30
execute at @s run playsound minecraft:ui.toast.out master @a ~ ~ ~ 2 1.4
execute at @s run playsound minecraft:block.big_dripleaf.tilt_up master @a ~ ~ ~ 0.8 0