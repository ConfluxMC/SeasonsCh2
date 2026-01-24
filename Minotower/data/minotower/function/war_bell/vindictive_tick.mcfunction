scoreboard players remove @s minotower.war_bell_vindictive_countdown 1
# Do some particle to indicate these entities are dangerous to attack
execute as @s[predicate=minotower:war_bell/vindictive_effect_period] anchored eyes run particle minecraft:copper_fire_flame ^ ^0.7 ^ 0.1 0.1 0.1 0.02 6

# If there's an attacker, remove the score to unmark entity for vindication. Need to remove or else attacker will continuously get punished
execute if function minotower:war_bell/vindictive_check run scoreboard players reset @s minotower.war_bell_vindictive_countdown