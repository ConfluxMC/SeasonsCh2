particle minecraft:dust_color_transition{from_color:[0.0,0.0,0.0],to_color:[0.0,0.4,0.5],scale:4} ~ ~1 ~ 0.5 0.5 0.5 5 30
playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 0.5 0.9
playsound minecraft:entity.breeze.land master @a ~ ~ ~ 2 0.6

attribute @s minecraft:safe_fall_distance modifier add chakram:shadowstepping 30 add_value
attribute @s minecraft:attack_damage modifier add chakram_shadowstepping_attack 2 add_multiplied_total

# Need to schedule otherwise attributes are instantly removed.
schedule function chakram:enchants/shadowstep/tag_shadowstepped 1t