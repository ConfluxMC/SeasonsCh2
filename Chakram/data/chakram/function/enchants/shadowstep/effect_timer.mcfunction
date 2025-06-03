#decrease timer score by 1
scoreboard players remove @s chakram_shadowstep_timer_sneak_speed 1

#fail means stop the effects
execute as @s[scores={chakram_shadowstep_timer_sneak_speed=..0}] run return fail
return 1