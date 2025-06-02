function chakram:enchants/shadowstep/cloud_effect
playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 0.2 0.1

attribute @s minecraft:safe_fall_distance modifier add chakram:shadowstepping 30 add_value

attribute @s minecraft:sneaking_speed modifier add chakram:shadowstepping 0.5 add_value
effect give @s minecraft:invisibility 4

tag @s add chakram.shadowstep_fall_immune
tag @s add chakram.shadowstep_under_effects

# 4 seconds
scoreboard players set @s chakram_shadowstep_timer_sneak_speed 80