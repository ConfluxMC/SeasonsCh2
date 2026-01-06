execute as @s if loaded ~ ~ ~ unless block ~ ~-.1 ~ minecraft:sculk run return run function deeper_dark:claw/break
execute as @s[tag=!deeper_dark.sculk_claw.closed] positioned ~-.5 ~ ~-.5 if entity @n[dx=0,dy=0,dz=0,predicate=deeper_dark:living,type=!minecraft:warden] run return run function deeper_dark:claw/close
execute as @s[tag=deeper_dark.sculk_claw.closed] run function deeper_dark:claw/close