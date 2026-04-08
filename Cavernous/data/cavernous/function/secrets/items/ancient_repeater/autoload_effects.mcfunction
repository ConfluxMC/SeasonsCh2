execute as @s[gamemode=!creative] run clear @s arrow 1
execute unless predicate cavernous:ancient_armor/set run damage @s 3 magic
advancement grant @s only cavernous:expansion/secrets/crafting/use_crossbow