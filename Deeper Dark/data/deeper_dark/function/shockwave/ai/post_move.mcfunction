# Run at location of shockwave after movement has concluded


#display
execute unless entity @e[type=marker,tag=deeper_dark.shockwave_trail,distance=0...5] run summon minecraft:marker ~ ~.5 ~ {Tags:["deeper_dark.shockwave_trail","deeper_dark.shockwave_part"]}
execute as @n[type=marker,tag=deeper_dark.shockwave_trail,distance=3.1..5] at @s run function deeper_dark:shockwave/ai/trail
execute as @n[type=marker,tag=deeper_dark.shockwave_trail] at @s unless entity @e[type=pig,tag=deeper_dark.shockwave,distance=0..3.1] run tag @s add deeper_dark.silent_despawn
effect clear @s minecraft:glowing


#sound
execute positioned ~-500 ~-6 ~-500 run playsound minecraft:block.sculk_sensor.clicking_stop hostile @a[dy=12,dx=1000,dz=1000] ~500 ~6 ~500 15 0
execute positioned ~-500 ~-6 ~-500 run playsound minecraft:entity.warden.ambient hostile @a[dy=12,dx=1000,dz=1000] ~500 ~6 ~500 4 2
execute positioned ~-500 ~-6 ~-500 run playsound minecraft:entity.warden.angry hostile @a[dy=12,dx=1000,dz=1000] ~500 ~6 ~500 1 2
execute if entity @p[distance=0..16] if entity @s[nbt={HurtTime:9s}] run playsound minecraft:block.sculk_catalyst.break hostile @a ~ ~ ~ 1 0

#light
execute if score Game deeper_dark.gamerule.shockwave_emits_light matches 1 if block ~ ~ ~ minecraft:air if loaded ~ ~ ~16 if loaded ~ ~ ~16 if loaded ~-16 ~ ~ if loaded ~-16 ~ ~ if loaded ~ ~ ~ positioned ~-500 ~-6 ~-500 if entity @p[dy=12,dx=1000,dz=1000] positioned ~500 ~6 ~500 run function deeper_dark:shockwave/light

execute positioned ~-500 ~-6 ~-500 as @a[gamemode=!spectator,dy=12,dx=1000,dz=1000,predicate=!deeper_dark:is_flying] positioned ~500 ~6 ~500 if entity @s[distance=0..10] run function deeper_dark:screen_shake
execute positioned ~-500 ~-6 ~-500 as @a[gamemode=!spectator,gamemode=!creative,dy=12,dx=1000,dz=1000] positioned ~500 ~6 ~500 if entity @s[distance=0..10] run effect give @s minecraft:darkness 1 0


#attack
execute as @e[distance=..5,type=!item,type=!minecraft:experience_orb,tag=!deeper_dark.shockwave_part,type=!marker,predicate=!deeper_dark:sculk_entity,predicate=deeper_dark:living] if data entity @s {HurtTime:0s} if data entity @s Health at @s anchored eyes positioned ^ ^ ^ \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @n[type=pig,tag=deeper_dark.shockwave] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @n[type=pig,tag=deeper_dark.shockwave] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @n[type=pig,tag=deeper_dark.shockwave] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @n[type=pig,tag=deeper_dark.shockwave] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @n[type=pig,tag=deeper_dark.shockwave] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @n[type=pig,tag=deeper_dark.shockwave] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @n[type=pig,tag=deeper_dark.shockwave] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @n[type=pig,tag=deeper_dark.shockwave] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @n[type=pig,tag=deeper_dark.shockwave] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore facing entity @n[type=pig,tag=deeper_dark.shockwave] eyes positioned ^ ^ ^.5 \
if block ~-.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~-.25 #deeper_dark:shockwave_ignore \
if block ~-.25 ~ ~.25 #deeper_dark:shockwave_ignore \
if block ~.25 ~ ~.25 #deeper_dark:shockwave_ignore at @s run function deeper_dark/shockwave/target

#lawnmower easter egg
fill ^-2 ^-1 ^-2 ^2 ^-1 ^-2 minecraft:air replace minecraft:short_grass

#replace shriekers
fill ~16 ~8 ~16 ~-16 ~-8 ~-16 minecraft:command_block{auto:1b,Command:"function deeper_dark:shockwave/replace_shriekers"} replace minecraft:sculk_shrieker[can_summon=true]