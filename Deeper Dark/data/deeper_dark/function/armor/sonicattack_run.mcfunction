tag @s add deeper_dark.selected
execute anchored eyes positioned ^ ^ ^1 run function deeper_dark:armor/sonicattack
execute anchored eyes positioned ^ ^ ^2 run function deeper_dark:armor/sonicattack
execute anchored eyes positioned ^ ^ ^3 run function deeper_dark:armor/sonicattack
execute anchored eyes positioned ^ ^ ^4 run function deeper_dark:armor/sonicattack
execute anchored eyes positioned ^ ^ ^5 run function deeper_dark:armor/sonicattack
execute anchored eyes positioned ^ ^ ^6 run function deeper_dark:armor/sonicattack
execute anchored eyes positioned ^ ^ ^7 run function deeper_dark:armor/sonicattack
execute anchored eyes positioned ^ ^ ^8 run function deeper_dark:armor/sonicattack
execute anchored eyes positioned ^ ^ ^9 run function deeper_dark:armor/sonicattack
execute anchored eyes positioned ^ ^ ^10 run function deeper_dark:armor/sonicattack
execute anchored eyes positioned ^ ^ ^11 run function deeper_dark:armor/sonicattack
execute anchored eyes positioned ^ ^ ^12 run function deeper_dark:armor/sonicattack
execute anchored eyes positioned ^ ^ ^13 run function deeper_dark:armor/sonicattack
execute anchored eyes positioned ^ ^ ^14 run function deeper_dark:armor/sonicattack
execute anchored eyes positioned ^ ^ ^15 run function deeper_dark:armor/sonicattack
tag @s remove deeper_dark.selected

playsound minecraft:entity.warden.sonic_boom ambient @a ~ ~ ~ 2 1
scoreboard players set @s deeper_dark.sonicattack -60