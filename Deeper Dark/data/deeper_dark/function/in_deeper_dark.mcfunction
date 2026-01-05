### Wardens
# If there are no alive non-spectator players in the deeper dark, force a random warden that does not have any suspects to dig away
execute unless entity @a[gamemode=!spectator,distance=0..,nbt=!{Health:0f}] as @e[type=minecraft:warden,predicate=deeper_dark:in_deeper_dark,limit=1,sort=random] at @s unless data entity @s anger.suspects[0] run data remove entity @s Brain.memories.minecraft:dig_cooldown

# Wardens in deeper dark have Resistance VI
effect give @e[type=minecraft:warden,predicate=deeper_dark:in_deeper_dark] minecraft:resistance 5 1 true
#execute as @a[predicate=deeper_dark:in_deeper_dark] at @s if entity @e[type= minecraft:warden,distance=0..50] run advancement grant @s only deeper_dark:warden

# Stop music if there's a warden nearby
execute at @a[predicate=deeper_dark:in_deeper_dark] if entity @n[type=minecraft:warden,distance=..50] run stopsound @s music

# Track warden deaths to light nearby portals
execute as @e[type=arrow,tag=deeper_dark.warden_death_tracker] on origin if data entity @s {Health:0.0f} at @s run summon minecraft:marker ~ ~1.5 ~ {Tags:["deeper_dark.portal_activation"]}
kill @e[type=arrow,tag=deeper_dark.warden_death_tracker]
execute if score Game deeper_dark.gamerule.disable_portals matches 0 as @e[type=minecraft:warden,predicate=deeper_dark:in_deeper_dark] at @s if entity @e[distance=0..64,type=#minecraft:item_frames,nbt={Item:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{deeper_dark:{EntrancePosition:{}}}}}},limit=1,sort=nearest,tag=!deeper_dark.active_portal,tag=!deeper_dark.invalid_portal] run function deeper_dark:warden_death_tracker



# Portal Activation
execute as @e[type=marker,tag=deeper_dark.portal_activation] at @s run function deeper_dark:portal/activation


#other
execute if score Game deeper_dark.gamerule.disable_keepinventory_override matches 0 as @a[nbt={DeathTime:1s},predicate=deeper_dark:in_deeper_dark,gamemode=!spectator,gamemode=!creative] at @s run function deeper_dark:drop


# Make valid spawns safe
execute as @a[tag=deeper_dark.valid_spawn_safety_check] at @s run function deeper_dark:valid_spawn/safety_check_loaded


#out_of_bounds
execute as @e[type=!marker,type=!text_display,type=!block_display,predicate=deeper_dark:in_deeper_dark,predicate=!deeper_dark:out_of_bounds,scores={deeper_dark.outofbounds=1..}] run scoreboard players reset @s deeper_dark.outofbounds
execute as @e[type=!marker,type=!text_display,type=!block_display,predicate=deeper_dark:in_deeper_dark,predicate=deeper_dark:out_of_bounds] at @s run function deeper_dark:out_of_bounds/run


# Structure Supports
execute as @e[type=marker,tag=deeper_dark.structure_support,predicate=deeper_dark:in_deeper_dark] at @s if loaded ~ ~ ~ run function deeper_dark:structure_support
#/execute align xyz run summon minecraft:marker ~.5 ~2.5 ~.5 {Tags:["deeper_dark.structure_support"]}


# ancient dark custom block spawners
execute as @e[type=marker,tag=deeper_dark.spawner,predicate=deeper_dark:in_deeper_dark] at @s if loaded ~ ~ ~ run function deeper_dark:ancient_dark_spawners


#ancient_dark_active
execute as @a[predicate=deeper_dark:in_ancient_dark,predicate=deeper_dark:touching_sculk,gamemode=!spectator] at @s run function deeper_dark:ancient_dark_touching_sculk


#execute as @a[scores={deeper_dark.ancient_dark_active=1..}]deeper_dark.ancient_dark_active matches 1..

