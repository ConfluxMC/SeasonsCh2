# Add 0 to scoreboard adds the entity to the scoreboard so that their score can be evaluated
execute as @s[gamemode=!creative,gamemode=!spectator,predicate=cavernous:in_poison_water,predicate=!cavernous:ancient_armor/mask] run scoreboard players add @s nox.time_poisoned 0
execute as @s[gamemode=!creative,gamemode=!spectator,scores={nox.time_poisoned=..80},predicate=cavernous:in_poison_water,predicate=!cavernous:ancient_armor/mask] run scoreboard players add @s nox.time_poisoned 1

execute as @s[scores={nox.time_poisoned=20..}] run effect give @s poison 3 1 true
execute as @s[scores={nox.time_poisoned=1..},predicate=!cavernous:in_poison_water] run scoreboard players remove @s nox.time_poisoned 1