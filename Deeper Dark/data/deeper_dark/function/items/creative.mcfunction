tellraw @s[scores={deeper_dark.items=1}] [{"hover_event":{"action":"show_text","value":[{"translate":"deeper_dark.gui.creative_items.hint","fallback":"Click on an item to get it"}]},"text":"\n"},{"translate":"deeper_dark.gui.creative_items","fallback":"Items From %s:","with":[{"translate":"deeper_dark.name","color":"#007A8A","click_event":{"action":"open_url","url":"https://www.planetminecraft.com/data-pack/deeper-dark-dimension/"},"hover_event":{"action":"show_text","value":[{"translate":"deeper_dark.gui.creative_items.website_hint","fallback":"Go To Website"}]},"fallback":"Deeper Dark"}]},{"text":"\n"}\
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

loot give @s[scores={deeper_dark.items=2}] loot deeper_dark:items/activated_sculk_shrieker
loot give @s[scores={deeper_dark.items=3}] loot deeper_dark:items/splash_potion_of_blindness
loot give @s[scores={deeper_dark.items=4}] loot deeper_dark:items/locator_amethyst_mineshaft
loot give @s[scores={deeper_dark.items=5}] loot deeper_dark:items/warden_tracker
loot give @s[scores={deeper_dark.items=6}] loot deeper_dark:items/altar_fragment
loot give @s[scores={deeper_dark.items=7}] loot deeper_dark:items/locator_ancient_fortress
loot give @s[scores={deeper_dark.items=8}] loot deeper_dark:items/sculk_tentacle
loot give @s[scores={deeper_dark.items=9}] loot deeper_dark:items/sculk_claw
loot give @s[scores={deeper_dark.items=10}] loot deeper_dark:items/sculk_syphon
loot give @s[scores={deeper_dark.items=11}] loot deeper_dark:items/locator_laboratory
loot give @s[scores={deeper_dark.items=12}] loot deeper_dark:items/anticatalyst
loot give @s[scores={deeper_dark.items=13}] loot deeper_dark:items/sonic_blaster

scoreboard players reset @s deeper_dark.items