playsound minecraft:entity.warden.sonic_boom block @a ~ ~ ~ 2 1
tag @s add deeper_dark.selected
tag @e[type=text_display,tag=deeper_dark.sonic_blaster_ring_4,distance=0...1,limit=4,sort=nearest] add deeper_dark.silent_despawn
tag @e[type=text_display,tag=deeper_dark.sonic_blaster_ring_5,distance=0...1,limit=4,sort=nearest] add deeper_dark.silent_despawn
tag @e[type=text_display,tag=deeper_dark.sonic_blaster_ring_6,distance=0...1,limit=4,sort=nearest] add deeper_dark.silent_despawn
execute positioned ^ ^ ^1 run function deeper_dark:armor/sonicattack
execute positioned ^ ^ ^2 run function deeper_dark:armor/sonicattack
execute positioned ^ ^ ^3 run function deeper_dark:armor/sonicattack
execute positioned ^ ^ ^4 run function deeper_dark:armor/sonicattack
execute positioned ^ ^ ^5 run function deeper_dark:armor/sonicattack
execute positioned ^ ^ ^6 run function deeper_dark:armor/sonicattack
execute positioned ^ ^ ^7 run function deeper_dark:armor/sonicattack
execute positioned ^ ^ ^8 run function deeper_dark:armor/sonicattack
execute positioned ^ ^ ^9 run function deeper_dark:armor/sonicattack
execute positioned ^ ^ ^10 run function deeper_dark:armor/sonicattack
execute positioned ^ ^ ^11 run function deeper_dark:armor/sonicattack
execute positioned ^ ^ ^12 run function deeper_dark:armor/sonicattack
execute positioned ^ ^ ^13 run function deeper_dark:armor/sonicattack
execute positioned ^ ^ ^14 run function deeper_dark:armor/sonicattack
execute positioned ^ ^ ^15 run function deeper_dark:armor/sonicattack
execute positioned ^ ^ ^16 run function deeper_dark:armor/sonicattack
tag @s remove deeper_dark.selected
scoreboard players set @s deeper_dark.sonicattack -60