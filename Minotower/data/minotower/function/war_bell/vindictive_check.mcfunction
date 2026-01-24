tag @s add war_bell.vindictive_current
execute on attacker at @s run return run function minotower:war_bell/vindictive_retaliate
tag @s remove war_bell.vindictive_current
return fail