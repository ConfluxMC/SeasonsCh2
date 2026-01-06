tag @s add deeper_dark.tentacle.landed
playsound minecraft:entity.warden.attack_impact block @a ~ ~ ~ 1.5 2
execute positioned ^ ^.75 ^ run particle minecraft:dust_pillar{block_state:sculk} ~ ~ ~ .2 .2 .2 .01 10
execute at @s positioned ^ ^.75 ^ positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,type=!minecraft:warden,predicate=deeper_dark:living] at @s run damage @s 5 minecraft:mob_attack by @n[type=marker,tag=deeper_dark.selected]