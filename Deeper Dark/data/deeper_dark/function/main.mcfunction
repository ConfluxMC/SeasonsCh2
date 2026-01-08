scoreboard objectives remove deeper_dark.var
scoreboard objectives add deeper_dark.var dummy
#datafixers
execute unless score first_ver deeper_dark.datafixers = current_ver deeper_dark.datafixers run function deeper_dark:datafixers
#gamerules
function deeper_dark:gamerules/default_gamerules

### Teleporting between dimensions
#in
execute as @r[predicate=deeper_dark:tp_in,tag=!deeper_dark.tp_cooldown] at @s unless entity @n[type=marker,tag=deeper_dark.portal_marker,distance=0..2] run function deeper_dark:tp_in

#out
execute as @p[predicate=deeper_dark:tp_out,tag=!deeper_dark.tp_cooldown] at @s unless entity @n[type=marker,tag=deeper_dark.portal_marker,distance=0..2] unless entity @a[tag=deeper_dark.tp_out_player] run function deeper_dark:tp_out

#cooldown
execute as @e[tag=deeper_dark.tp_cooldown] at @s if loaded ~ ~ ~ unless block ~ ~-.1 ~ minecraft:reinforced_deepslate unless block ~ ~-.5 ~ minecraft:reinforced_deepslate positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[dx=0.01,dy=0.01,dz=0.01,tag=deeper_dark.portal_marker] run tag @s remove deeper_dark.tp_cooldown

#particles
execute if score Game deeper_dark.gamerule.disable_portal_particles matches 0 run function deeper_dark:gamerules/disable_portal_particles

### Main deeper dark dimension tick function. Run if there are any entities in the dimension.
execute in deeper_dark:deeper_dark if entity @n[distance=0..] run function deeper_dark:in_deeper_dark


### Items
# Sonic attack
execute as @a[predicate=deeper_dark:enchantment_sonic_boom] run scoreboard players add @s deeper_dark.sonicattack 0
execute as @a[scores={deeper_dark.sonicattack=0..99}] run function deeper_dark:armor/sonicattack_charging
execute as @a[predicate=deeper_dark:enchantment_sonic_boom,x_rotation=70..90,predicate=deeper_dark:is_sneaking] run title @s actionbar [{"score":{"name":"@s","objective":"deeper_dark.sonicattack"},"color":"#007A8A"},{"text":"%"}]

execute as @a[predicate=!deeper_dark:is_sneaking,scores={deeper_dark.sonicattack=100}] at @s run function deeper_dark:armor/sonicattack_run
execute as @a[scores={deeper_dark.sonicattack=..-2}] run title @s actionbar {"translate":"enchantment.deeper_dark.sonic_boom.cooldown","fallback":"Cooldown","color":"#007A8A"}
execute as @a[scores={deeper_dark.sonicattack=-1}] run title @s actionbar {"translate":"enchantment.deeper_dark.sonic_boom.ready","fallback":"Ready","color":"#007A8A"}
scoreboard players add @a[scores={deeper_dark.sonicattack=..-1}] deeper_dark.sonicattack 1

# Resonate
execute as @e[predicate=deeper_dark:enchantment_resonate,predicate=deeper_dark:living] if data entity @s {HurtTime:1s} at @s run function deeper_dark:armor/resonate

# Shrieker Sense
execute as @a[predicate=deeper_dark:enchantment_shrieker_sense,advancements={deeper_dark:functions/using_spyglass=true}] at @s anchored eyes positioned ^ ^ ^ run function deeper_dark:armor/shrieker_sense
advancement revoke @a only deeper_dark:functions/using_spyglass
execute as @e[type=text_display,tag=deeper_dark.shrieker_sense_marker] at @s run function deeper_dark:armor/shrieker_sense_marker_lifecount


### Blocks
# Tentacles
# This enables the deeper_dark.var score for existing tentacle segments
scoreboard players set @e[type=block_display,tag=deeper_dark.tentacle_segment] deeper_dark.var 0
execute as @e[type=minecraft:block_display,tag=deeper_dark.tentacle_segment] at @s if loaded ~ ~ ~ unless entity @n[type=minecraft:marker,distance=..10,tag=deeper_dark.tentacles] run kill @s
execute as @e[type=minecraft:marker,tag=deeper_dark.tentacles] at @s if loaded ~ ~ ~ if entity @p[gamemode=!spectator,distance=0..32] run function deeper_dark:tentacle/ai
execute as @e[type=minecraft:block_display,tag=deeper_dark.tentacle_segment,scores={deeper_dark.var=0}] unless entity @p[gamemode=!spectator,distance=0..32] run tag @s add deeper_dark.silent_despawn

# Claw
execute as @e[type=block_display,tag=deeper_dark.sculk_claw] at @s run function deeper_dark:claw/run

# Syphon
execute as @e[type=minecraft:marker,tag=deeper_dark.syphon] at @s if loaded ~ ~ ~ run function deeper_dark:syphon/ai
execute as @e[type=marker,tag=deeper_dark.cursor_tracker] at @s run data modify entity @s data.cursors set from block ~ ~ ~ cursors
execute as @e[type=marker,tag=deeper_dark.cursor_tracker] at @s run function deeper_dark:syphon/cursor

# Anticatalyst
execute as @e[type=minecraft:marker,tag=deeper_dark.anticatalyst,sort=random,limit=20] at @s if loaded ~ ~ ~ run function deeper_dark:anticatalyst/ai

# Sonic Blaster
execute as @e[type=minecraft:marker,tag=deeper_dark.sonic_blaster] at @s if loaded ~ ~ ~ run function deeper_dark:sonic_blaster/ai

# Placing blocks
execute as @e[type=item,predicate=deeper_dark:item_sculk_tentacle] at @s if loaded ~ ~ ~ if predicate deeper_dark:block_can_place if function deeper_dark:has_origin run function deeper_dark:tentacle/spawn
execute as @e[type=item,predicate=deeper_dark:item_sculk_claw] at @s if loaded ~ ~ ~ if predicate deeper_dark:block_can_place if block ~ ~-1 ~ sculk if function deeper_dark:has_origin run function deeper_dark:claw/spawn
execute as @e[type=item,predicate=deeper_dark:item_sculk_syphon] at @s if loaded ~ ~ ~ if predicate deeper_dark:block_can_place if function deeper_dark:has_origin run function deeper_dark:syphon/spawn
execute as @e[type=item,predicate=deeper_dark:item_anticatalyst] at @s if loaded ~ ~ ~ if predicate deeper_dark:block_can_place if function deeper_dark:has_origin run function deeper_dark:anticatalyst/spawn
execute as @e[type=item,predicate=deeper_dark:item_sonic_blaster] at @s if loaded ~ ~ ~ if predicate deeper_dark:block_can_place if function deeper_dark:has_origin run function deeper_dark:sonic_blaster/spawn

### Boss
scoreboard players set @e[type=block_display,tag=deeper_dark.boss_segment] deeper_dark.var 0
execute as @e[type=marker,tag=deeper_dark.boss_spawner] at @s if entity @p[distance=0..19,gamemode=!spectator] run function deeper_dark:boss/activate
execute as @e[type=marker,tag=deeper_dark.boss] at @s run function deeper_dark:boss/ai
execute unless entity @e[type=marker,tag=deeper_dark.boss] run bossbar set minecraft:deeper_dark/boss players "○"
execute as @e[type=minecraft:block_display,tag=deeper_dark.boss_segment,scores={deeper_dark.var=0}] run tag @s add deeper_dark.silent_despawn
execute as @e[type=arrow,tag=deeper_dark.boss.death_tracker] on origin if data entity @s {Health:0.0f} at @s run function deeper_dark:boss/death
kill @e[type=arrow,tag=deeper_dark.boss.death_tracker]
execute as @e[type=ghast,tag=deeper_dark.boss_hitbox] at @s run function deeper_dark:boss/death_tracker


advancement revoke @a only deeper_dark:functions/using_shield
### Sculk conversion
execute if score Game deeper_dark.gamerule.disable_sculk_conversion matches 0 as @e[type=item,predicate=deeper_dark:item_altar_fragment] at @s if block ~ ~-.1 ~ minecraft:sculk_catalyst positioned ~ ~-.1 ~ align xyz positioned ~.5 ~.5 ~.5 run function deeper_dark:sculk_converter/setup
execute as @e[type=marker,tag=deeper_dark.sculk_converter] at @s run function deeper_dark:sculk_converter/run
execute as @e[type=interaction,tag=deeper_dark.sculk_converter_hitbox] at @s if loaded ~ ~ ~ run function deeper_dark:sculk_converter/hitbox/run


# If any shockwaves exist, run shockwave ai
execute if entity @e[type=#deeper_dark:shockwave_part,tag=deeper_dark.shockwave_part,limit=1] run function deeper_dark:shockwave/ai

#portal
execute as @e[type=marker,tag=deeper_dark.portal_sync,limit=1,sort=random] at @s if loaded ~ ~ ~ if loaded ~16 ~ ~ if loaded ~-16 ~ ~ if loaded ~ ~ ~16 if loaded ~ ~ ~-16 run function deeper_dark:portal/portal_sync

execute as @e[type=marker,tag=deeper_dark.portal_marker] at @s if loaded ~ ~ ~ run function deeper_dark:portal/unlight
execute as @e[type=marker,tag=deeper_dark.portal_marker] at @s if loaded ~ ~ ~ unless block ~ ~ ~ light run kill @s

execute as @a at @s at @e[type=text_display,tag=deeper_dark.portal_display,limit=10,sort=nearest] unless entity @n[type=marker,distance=0...1,tag=deeper_dark.portal_marker] run playsound minecraft:entity.warden.death block @s ~ ~ ~ 10 0
execute as @e[type=text_display,tag=deeper_dark.portal_display] at @s unless entity @n[type=marker,distance=0...1,tag=deeper_dark.portal_marker] run function deeper_dark:portal/kill_display
execute if score Game deeper_dark.gamerule.disable_portal_particles matches 0 run function deeper_dark:portal/particles

execute if score Game deeper_dark.gamerule.disable_portals matches 0 as @e[type=marker,tag=deeper_dark.portal_marker] at @s positioned ~-.5 ~ ~-.5 as @n[dx=0,dy=0,dz=0,type=!marker,type=!text_display,type=!block_display,type=!item_display,type=!armor_stand,predicate=!deeper_dark:has_passenger,tag=!deeper_dark.tp_cooldown,distance=0..] at @s positioned ~-0.5 ~ ~-0.5 if entity @e[type=marker,dx=0,dy=0,dz=0,tag=deeper_dark.portal_marker] at @s[tag=!deeper_dark.tp_cooldown] run function deeper_dark:portal/prep_teleport

execute as @e[type=marker,tag=deeper_dark.portal_marker] at @s unless data entity @s data.location run kill @s


#silent_despawn
execute as @e[tag=deeper_dark.silent_despawn,type=!player] at @s run function deeper_dark:silent_despawn

#creative items
execute as @a[scores={deeper_dark.items=1..}] run function deeper_dark:items/creative
scoreboard players enable @a[gamemode=creative] deeper_dark.items