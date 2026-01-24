# Apply retaliation attack on attacker (@s)
damage @s 6 magic by @n[tag=war_bell.vindictive_current]
effect give @s blindness 5 0
effect give @s wither 5 0
effect give @s slowness 5 1

#say ouch!!!

tag @e[tag=war_bell.vindictive_current] remove war_bell.vindictive_current
return 1