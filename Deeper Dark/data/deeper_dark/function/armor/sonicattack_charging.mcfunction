# Check if charging up is still valid. If not, cancel.
execute as @s[scores={deeper_dark.sonicattack=1..99}] unless entity @s[x_rotation=70..90,predicate=deeper_dark:is_sneaking] run title @s actionbar {"translate":"enchantment.deeper_dark.sonic_boom.canceled","fallback":"Canceled","color":"#007A8A"}
execute as @s[predicate=!deeper_dark:enchantment_sonic_boom] run return run scoreboard players set @s deeper_dark.sonicattack 0
execute unless entity @s[x_rotation=70..90] run return run scoreboard players set @s deeper_dark.sonicattack 0
execute as @s[predicate=!deeper_dark:is_sneaking] run return run scoreboard players set @s deeper_dark.sonicattack 0


execute at @s[scores={deeper_dark.sonicattack=3}] run playsound minecraft:entity.warden.sonic_charge ambient @a ~ ~ ~ 2 1
scoreboard players add @s[predicate=deeper_dark:enchantment_sonic_boom,x_rotation=70..90,predicate=deeper_dark:is_sneaking] deeper_dark.sonicattack 3
scoreboard players set @s[scores={deeper_dark.sonicattack=90..}] deeper_dark.sonicattack 100