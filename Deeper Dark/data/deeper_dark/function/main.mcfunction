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
execute as @p[predicate=deeper_dark:tp_out,tag=!deeper_dark.tp_cooldown] at @s unless entity @e[type=marker,tag=deeper_dark.portal_marker,distance=0..2] unless entity @a[tag=deeper_dark.tp_out_player] run function deeper_dark:tp_out

#cooldown
execute as @e[tag=deeper_dark.tp_cooldown] at @s if loaded ~ ~ ~ unless block ~ ~-.1 ~ minecraft:reinforced_deepslate unless block ~ ~-.5 ~ minecraft:reinforced_deepslate positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[dx=0.01,dy=0.01,dz=0.01,tag=deeper_dark.portal_marker] run tag @s remove deeper_dark.tp_cooldown

#particles
execute if score Game deeper_dark.gamerule.disable_portal_particles matches 0 run function deeper_dark:gamerules/disable_portal_particles

### Main deeper dark dimension tick function. Run if there are any entities in the dimension.
execute in deeper_dark:deeper_dark if entity @e[distance=0..] run function deeper_dark:in_deeper_dark


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

# Warden Tracker
execute as @a[scores={deeper_dark.sonicattack=0},predicate=deeper_dark:holding_warden_tracker] at @s run function deeper_dark:items/warden_tracker

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
scoreboard players set @e[tag=deeper_dark.boss_segment] deeper_dark.var 0
execute as @e[tag=deeper_dark.boss_spawner] at @s if entity @p[distance=0..19,gamemode=!spectator] run function deeper_dark:boss/activate
execute as @e[tag=deeper_dark.boss] at @s run function deeper_dark:boss/ai
execute unless entity @e[tag=deeper_dark.boss] run bossbar set minecraft:deeper_dark/boss players "○"
execute as @e[type=minecraft:block_display,scores={deeper_dark.var=0},tag=deeper_dark.boss_segment] run tag @s add deeper_dark.silent_despawn
execute as @e[tag=deeper_dark.boss.death_tracker] on origin at @s if data entity @s {Health:0.0f} at @s run function deeper_dark:boss/death
kill @e[tag=deeper_dark.boss.death_tracker]
execute as @e[tag=deeper_dark.boss_hitbox] at @s run function deeper_dark:boss/death_tracker


advancement revoke @a only deeper_dark:functions/using_shield
### Sculk conversion
execute if score Game deeper_dark.gamerule.disable_sculk_conversion matches 0 as @e[type=item,predicate=deeper_dark:item_altar_fragment] at @s if block ~ ~-.1 ~ minecraft:sculk_catalyst positioned ~ ~-.1 ~ align xyz positioned ~.5 ~.5 ~.5 run function deeper_dark:sculk_converter/setup
execute as @e[type=marker,tag=deeper_dark.sculk_converter] at @s run function deeper_dark:sculk_converter/run
execute as @e[type=interaction,tag=deeper_dark.sculk_converter_hitbox] at @s if data entity @s interaction positioned ~ ~-2.6 ~ if data entity @e[tag=deeper_dark.sculk_converter,limit=1,sort=nearest,distance=0...1] data.Item run function deeper_dark:sculk_converter/hitbox_remove
execute as @e[type=interaction,tag=deeper_dark.sculk_converter_hitbox] at @s if block ~ ~ ~ moving_piston positioned ~ ~-2.6 ~ if data entity @e[tag=deeper_dark.sculk_converter,limit=1,sort=nearest,distance=0...1] data.Item run function deeper_dark:sculk_converter/hitbox_remove
execute as @e[type=interaction,tag=deeper_dark.sculk_converter_hitbox] at @s if data entity @s interaction positioned ~ ~-2.6 ~ unless data entity @e[tag=deeper_dark.sculk_converter,limit=1,sort=nearest,distance=0...1] data.Item run function deeper_dark:sculk_converter/hitbox_place
execute as @e[type=interaction,tag=deeper_dark.sculk_converter_hitbox] at @s if data entity @s interaction run data remove entity @s interaction
execute as @e[type=item_display,tag=deeper_dark.sculk_converter_item] at @s positioned ~ ~-3 ~ run data modify entity @s item set from entity @e[tag=deeper_dark.sculk_converter,limit=1,sort=nearest,distance=0...1] data.Item
execute as @e[type=item_display,tag=deeper_dark.sculk_converter_item] at @s positioned ~ ~-3 ~ unless data entity @e[tag=deeper_dark.sculk_converter,limit=1,sort=nearest,distance=0...1] data.Item run data remove entity @s item


# If any shockwaves exist, run shockwave ai
execute if entity @e[type=#deeper_dark:shockwave_part,tag=deeper_dark.shockwave_part,limit=1] run function deeper_dark:shockwave/ai

#portal
execute as @e[type=marker,tag=deeper_dark.portal_sync,limit=1,sort=random] at @s if loaded ~ ~ ~ if loaded ~16 ~ ~ if loaded ~-16 ~ ~ if loaded ~ ~ ~16 if loaded ~ ~ ~-16 run function deeper_dark:portal/portal_sync

execute as @e[type=marker,tag=deeper_dark.portal_marker] at @s if loaded ~ ~ ~ run function deeper_dark:portal/unlight
execute as @e[type=marker,tag=deeper_dark.portal_marker] at @s if loaded ~ ~ ~ unless block ~ ~ ~ light run kill @s
execute as @a at @s at @e[tag=deeper_dark.portal_display,limit=10,sort=nearest] unless entity @e[type=marker,distance=0...1,tag=deeper_dark.portal_marker] if block ~ ~ ~ minecraft:light run playsound minecraft:entity.warden.death block @s ~ ~ ~ 10 0
execute as @e[tag=deeper_dark.portal_display] at @s unless entity @e[type=marker,distance=0...1,tag=deeper_dark.portal_marker] if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:air
execute as @e[tag=deeper_dark.portal_display] at @s unless entity @e[type=marker,distance=0...1,tag=deeper_dark.portal_marker] run kill @s
execute if score Game deeper_dark.gamerule.disable_portal_particles matches 0 as @e[type=marker,tag=deeper_dark.portal_marker] if predicate deeper_dark:chance_50 at @s run particle minecraft:sculk_soul ~ ~ ~ .5 .5 .5 0.01 1 force
execute if score Game deeper_dark.gamerule.disable_portal_particles matches 0 as @e[type=marker,tag=deeper_dark.portal_marker] if predicate deeper_dark:chance_50 at @s run particle minecraft:sculk_charge_pop ~ ~ ~ .5 .5 .5 0 1
execute if score Game deeper_dark.gamerule.disable_portal_particles matches 0 as @a at @s at @e[type=marker,tag=deeper_dark.portal_marker,limit=1,sort=nearest] run playsound minecraft:block.sculk_catalyst.bloom block @s ~ ~ ~ 2 0

execute if score Game deeper_dark.gamerule.disable_portals matches 0 as @e[type=marker,tag=deeper_dark.portal_marker] at @s positioned ~-.5 ~ ~-.5 as @n[dx=0,dy=0,dz=0,type=!marker,type=!text_display,type=!block_display,type=!item_display,type=!armor_stand,predicate=!deeper_dark:has_passenger,tag=!deeper_dark.tp_cooldown,distance=0..] at @s positioned ~-0.5 ~ ~-0.5 if entity @e[type=marker,dx=0,dy=0,dz=0,tag=deeper_dark.portal_marker] at @s[tag=!deeper_dark.tp_cooldown] run function deeper_dark:portal/prep_teleport


execute as @e[type=marker,tag=deeper_dark.portal_marker] at @s unless data entity @s data.location run kill @s


#warden spawning
execute as @e[type=warden,tag=deeper_dark.warden_spawned_3] at @s run tp @s ~ ~-9999.5 ~
execute as @e[type=warden,tag=deeper_dark.warden_spawned_3] run tag @s remove deeper_dark.warden_spawned
execute as @e[type=warden,tag=deeper_dark.warden_spawned_3] run tag @s remove deeper_dark.warden_spawned_2
execute as @e[type=warden,tag=deeper_dark.warden_spawned_3] run tag @s remove deeper_dark.warden_spawned_3
execute as @e[type=warden,tag=deeper_dark.warden_spawned_2] run tag @s add deeper_dark.warden_spawned_3
execute as @e[type=warden,tag=deeper_dark.warden_spawned] run tag @s add deeper_dark.warden_spawned_2

#silent_despawn
execute as @e[tag=deeper_dark.silent_despawn,type=!player] at @s run function deeper_dark:silent_despawn



#creative items
tellraw @a[scores={deeper_dark.items=1}] [{"hover_event":{"action":"show_text","value":[{"translate":"deeper_dark.gui.creative_items.hint","fallback":"Click on an item to get it"}]},"text":"\n"},{"translate":"deeper_dark.gui.creative_items","fallback":"Items From %s:","with":[{"translate":"deeper_dark.name","color":"#007A8A","click_event":{"action":"open_url","url":"https://www.planetminecraft.com/data-pack/deeper-dark-dimension/"},"hover_event":{"action":"show_text","value":[{"translate":"deeper_dark.gui.creative_items.website_hint","fallback":"Go To Website"}]},"fallback":"Deeper Dark"}]},{"text":"\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 2"},"translate":"item.deeper_dark.activated_sculk_shrieker","color":"yellow","fallback":"Activated Sculk Shrieker"},{"text":"\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 3"},"translate":"item.deeper_dark.splash_potion_of_blindness","fallback":"Splash Potion of Blindness"},{"text":"\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 4"},"translate":"item.deeper_dark.locator_amethyst_mineshaft","fallback":"Amethyst Mineshaft Locator Compass"},{"text":"\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 5"},"translate":"item.deeper_dark.warden_tracker","color":"yellow","fallback":"Warden Tracker"},{"text":"\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 6"},"translate":"item.deeper_dark.altar_fragment","color":"aqua","fallback":"Conversion Altar Fragment"},{"text":"\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 7"},"translate":"item.deeper_dark.locator_ancient_fortress","fallback":"Ancient Fortress Locator Compass"},{"text":"\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 8"},"translate":"item.deeper_dark.sculk_tentacle","fallback":"Sculk Tentacle"},{"text":"\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 9"},"translate":"item.deeper_dark.sculk_claw","fallback":"Sculk Claw"},{"text":"\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 10"},"translate":"item.deeper_dark.sculk_syphon","fallback":"Sculk Syphon"},{"text":"\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 11"},"translate":"item.deeper_dark.locator_laboratory","fallback":"Laboratory Locator Compass"},{"text":"\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 12"},"translate":"item.deeper_dark.anticatalyst","color":"light_purple","fallback":"Anticatalyst"},{"text":"\n"}\
,{"click_event":{"action":"run_command","command":"/trigger deeper_dark.items set 13"},"translate":"item.deeper_dark.sonic_blaster","fallback":"Sonic Blaster"},{"text":"\n"}\
]

loot give @a[scores={deeper_dark.items=2}] loot deeper_dark:items/activated_sculk_shrieker
loot give @a[scores={deeper_dark.items=3}] loot deeper_dark:items/splash_potion_of_blindness
loot give @a[scores={deeper_dark.items=4}] loot deeper_dark:items/locator_amethyst_mineshaft
loot give @a[scores={deeper_dark.items=5}] loot deeper_dark:items/warden_tracker
loot give @a[scores={deeper_dark.items=6}] loot deeper_dark:items/altar_fragment
loot give @a[scores={deeper_dark.items=7}] loot deeper_dark:items/locator_ancient_fortress
loot give @a[scores={deeper_dark.items=8}] loot deeper_dark:items/sculk_tentacle
loot give @a[scores={deeper_dark.items=9}] loot deeper_dark:items/sculk_claw
loot give @a[scores={deeper_dark.items=10}] loot deeper_dark:items/sculk_syphon
loot give @a[scores={deeper_dark.items=11}] loot deeper_dark:items/locator_laboratory
loot give @a[scores={deeper_dark.items=12}] loot deeper_dark:items/anticatalyst
loot give @a[scores={deeper_dark.items=13}] loot deeper_dark:items/sonic_blaster

scoreboard players reset @a deeper_dark.items
scoreboard players enable @a[gamemode=creative] deeper_dark.items