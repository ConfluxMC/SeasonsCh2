execute unless function cavernous:secrets/items/ancient_tablet/craft0 run return run particle dust{color:[0.443, 0.055, 0.055],scale:2} ~ ~0.15 ~ 0.3 0.3 0.3 0 1 normal @a

#if successfully crafted...

kill @s
particle dust{color:[0.443, 0.055, 0.055],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 30 normal @a
playsound block.end_portal_frame.fill block @a ~ ~ ~ 0.8 0.3 0