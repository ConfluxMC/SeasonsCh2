kill @n[type=item,predicate=hollow_earth:warden_pacifier_bundle]
loot spawn ~ ~0.5 ~ loot hollow_earth:warden_pacifier
tag @s add has_crafted

particle dust{color:[0.443, 0.055, 0.055],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 30 normal @a
playsound block.end_portal_frame.fill block @a ~ ~ ~ 0.8 0.3 0