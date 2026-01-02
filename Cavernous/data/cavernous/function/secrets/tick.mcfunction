### Opening

execute as @a[scores={opening.playing=1}] at @s run function cavernous:secrets/opening_display
execute as @a[scores={opening.playing=1,opening.timer=..0}] run scoreboard players remove @s opening.playing 1

### Structure Stands

execute as @e[type=marker,tag=redstone_updater] at @s if loaded ~-25 ~-5 ~-25 if loaded ~25 ~20 ~25 run function cavernous:secrets/structure_stands/redstone_updater
execute as @e[type=marker,tag=biome_setter] at @s if loaded ~-25 ~-5 ~-25 if loaded ~25 ~20 ~25 run function cavernous:secrets/structure_stands/biome_setter

execute as @e[type=marker,tag=gate_center] at @s if loaded ~ ~ ~ run function cavernous:secrets/structure_stands/gate_center
execute as @e[type=interaction,tag=remnant] at @s if loaded ~ ~ ~ run function cavernous:secrets/structure_stands/remnant
execute as @e[type=marker,tag=prison] at @s if loaded ~ ~ ~ run function cavernous:secrets/structure_stands/prison_entrance
execute as @e[type=marker,tag=study] at @s if loaded ~ ~ ~ run function cavernous:secrets/structure_stands/study
execute as @e[type=marker,tag=draining] at @s if loaded ~ ~ ~ run function cavernous:secrets/structure_stands/draining

### Curse

execute as @a unless score @s curse.has_notified matches 1 unless score @s curse.has_notified matches 0 run scoreboard players set @s curse.has_notified 0
execute as @a unless score @s curse.cooldown_active matches -10..10 run scoreboard players set @s curse.cooldown_active 0

execute as @a[predicate=cavernous:in_cursed_structure] at @s run function cavernous:secrets/curse_active
execute as @a[scores={curse.has_notified=1},predicate=!cavernous:in_cursed_structure] run scoreboard players set @s curse.has_notified 0

execute as @a[scores={curse.cooldown_active=1}] run scoreboard players add @s curse.cooldown_timer 1
execute as @a[scores={curse.cooldown_active=1,curse.cooldown_timer=7200..}] run scoreboard players set @s curse.cooldown_timer 0
execute as @a[scores={curse.cooldown_active=1,curse.cooldown_timer=7200..}] run scoreboard players set @s curse.cooldown_active 0

### Mobs

    #### Glob
    
    execute as @e[type=creeper,tag=glob] at @s run function cavernous:secrets/mobs/glob/run
    execute as @e[type=block_display,tag=glob_display] at @s run function cavernous:secrets/mobs/glob/display_run

### Items

    #### Ancient Staff
    execute as @a[predicate=cavernous:ancient_staff_activate,scores={ancient_staff.cooldown_timer=100..}] unless score @s ancient_staff.activating matches 1 at @s positioned ~ ~1.7 ~ run function cavernous:secrets/items/ancient_staff/activate
    execute as @a[predicate=cavernous:ancient_staff_activate] run scoreboard players set @s ancient_staff.activating 1
    execute as @a[scores={ancient_staff.activating=1}] unless predicate cavernous:ancient_staff_activate run scoreboard players set @s ancient_staff.activating 0

        #@ Sounds shockingly like a "no" sound
    execute as @a[predicate=cavernous:ancient_staff_activate,scores={ancient_staff.cooldown_timer=..99}] at @s unless score @s ancient_staff.activating matches 1 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.1 0

    execute as @a unless score @s ancient_staff.cooldown_timer matches 0.. run scoreboard players set @s ancient_staff.cooldown_timer 100
    execute as @a run scoreboard players add @s ancient_staff.cooldown_timer 5
    execute as @a[scores={ancient_staff.cooldown_timer=..100}] run scoreboard players operation @s ancient_staff.cooldown_timer.display = 100 num
    execute as @a[scores={ancient_staff.cooldown_timer=..100}] run scoreboard players operation @s ancient_staff.cooldown_timer.display -= @s ancient_staff.cooldown_timer
    execute as @a[scores={ancient_staff.cooldown_timer=..100}] run title @s actionbar ["",{"text":"Cooldown 0.","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"ancient_staff.cooldown_timer.display"},"italic":true,"color":"gray"},{"text":"s","italic":true,"color":"gray"}]
    execute as @a[scores={ancient_staff.cooldown_timer=105}] run title @s actionbar ""

    #### Ancient Shield
    execute as @a[predicate=cavernous:holding_ancient_shield] at @s if score @s shield.damage_blocked matches 200.. run function cavernous:secrets/items/ancient_shield/block

    execute as @e[scores={shield.stunned=1}] at @s run function cavernous:secrets/items/ancient_shield/stunned_run

    #### Armor
        #Effects per piece
    execute as @a[predicate=cavernous:ancient_armor/mask] at @s if biome ~ ~ ~ cavernous:the_undergrowth run effect give @s water_breathing 2 0 true
    execute as @a[predicate=cavernous:ancient_armor/mask] at @s if biome ~ ~ ~ cavernous:myst/noxwoods run effect clear @s poison

       #Gain saturation when hungry
    execute as @a[predicate=cavernous:ancient_armor/set] at @s run function cavernous:secrets/items/ancient_armor/run

    #### Ancient Blade
    execute as @a[predicate=cavernous:holding_ancient_blade_damage_tick,predicate=!cavernous:ancient_armor/set] at @s run function cavernous:secrets/items/ancient_blade/damage_self

    #### Ancient Tablet
    execute as @e[type=item,predicate=cavernous:ancient_tablet] at @s run function cavernous:secrets/items/ancient_tablet/run

    #### Ancient Repeater
    execute as @a[predicate=cavernous:holding_ancient_repeater,predicate=cavernous:holding_ancient_repeater_can_autoload] at @s run function cavernous:secrets/items/ancient_repeater/autoload
