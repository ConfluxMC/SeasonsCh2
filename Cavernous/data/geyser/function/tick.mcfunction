###SERVER UTILITY

execute as @a if score @s geyser.msg matches 1 unless score .global geyser.msg.acknowledged matches 1 run tellraw @s ["",{text:"IMPORTANT DISCLAIMER REGARDING GEYSERS!",bold:true,color:"red"},{text:"\n"},{text:"If you are running Cavernous on a server, certain settings are required in order for it to run properly, these are detailed in the README file in the datapack folder. Datapacks that unlock all recipes automatically are not compatible, steps to fix and alternatives can also be found in the README file. If you are a server operator, please click the green checkmark to acknowledge that you have read this.",color:"gray"},{text:" [✔]",bold:true,color:"green",click_event:{action:"run_command",command:"/scoreboard players set .global geyser.msg.acknowledged 1"}}]
#Exported Tellraw
#{"jformat":8,"jobject":[{"bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"red","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"text":"IMPORTANT DISCLAIMER REGARDING GEYSERS!"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"none","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"text":"\n"},{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"gray","insertion":"","click_event_type":"none","click_event_value":"","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"text":"If you are running Cavernous on a server, certain settings are required in order for it to run properly, these are detailed in the README file in the datapack folder. Datapacks that unlock all recipes automatically are not compatible, steps to fix and alternatives can also be found in the README file. If you are a server operator, please click the green checkmark to acknowledge that you have read this."},{"bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":null,"color":"green","insertion":"","click_event_type":"run_command","click_event_value":"/scoreboard players set .global geyser.msg.acknowledged 1","hover_event_type":"none","hover_event_value":"","hover_event_object":{},"hover_event_children":[],"text":" [✔]"}],"command":"/tellraw @p %s","jtemplate":"tellraw"}

###GLOBAL RANDOMIZERS AND LOOPS

    #Geyser Additional Time
    scoreboard players add .global rand.1 1
    execute if score .global rand.1 matches 41.. run scoreboard players set .global rand.1 -40

    #Event Decider 1-3
    scoreboard players add .global geyser.event_selector 1
    execute if score .global geyser.event_selector matches 4.. run scoreboard players set .global geyser.event_selector 1

###GEYSER
    # Update armor stand geysers to block displays
        execute as @e[type=armor_stand,tag=geyser] at @s run function geyser:replace_armor_stand

    # As Geysers
        execute as @e[type=block_display,tag=geyser] at @s run function geyser:tick_geyser
    
    # Geysered Entities
        execute as @e[type=!#geyser:cannot_be_geysered,tag=geysered] run function geyser:geysered

###WORLDGEN
execute at @a[predicate=cavernous:in_geyser_biome] if score .global geyser.enabled matches 1 run fill ~25 ~3 ~25 ~-25 ~-8 ~-25 command_block[conditional=false,facing=west]{Command:"function geyser:spawn_geyser",auto:1b,conditionMet:1b,powered:0b} replace structure_void
