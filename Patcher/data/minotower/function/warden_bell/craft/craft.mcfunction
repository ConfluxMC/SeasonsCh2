item modify entity @n[type=item,distance=..1,predicate=minotower:warden_bell_template_bundle] contents {function:"set_contents",component:"bundle_contents",entries:[{type:"minecraft:loot_table",value:"minotower:bell/template_warden"}]}
kill @s

particle dust{color:[0.443, 0.055, 0.055],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 30 normal @a
playsound block.end_portal_frame.fill block @a ~ ~ ~ 0.8 0.3 0
playsound minecraft:entity.warden.sonic_boom block @a ~ ~ ~ 0.2 1.8
particle minecraft:sculk_charge{roll:0} ~ ~ ~ 0 0 0 0.5 40 normal @a