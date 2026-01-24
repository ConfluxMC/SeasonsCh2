$effect give @s instant_health 1 $(heal) true
$effect give @s absorption 15 $(heal)

#$execute at @n[type=warden,distance=..32] at @e[type=warden,distance=..32] run particle trail{color:[0.376,0.957,1.000],target:[$(x),$(y),$(z)],duration:20} ~ ~ ~ 0.5 0.5 0.5 1 10 force
#$execute at @n[type=warden,distance=..32] at @e[type=warden,distance=..32] run particle trail{color:[0.051,0.071,0.090],target:[$(x),$(y),$(z)],duration:20} ~ ~ ~ 0.5 0.5 0.5 1 15 force

playsound minecraft:particle.soul_escape player @a ~ ~ ~ 1 1
particle minecraft:sculk_soul ~ ~1 ~ 0.1 0 0.1 0.05 5