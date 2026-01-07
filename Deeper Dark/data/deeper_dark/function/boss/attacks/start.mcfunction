execute if predicate deeper_dark:chance_25 if entity @n[tag=deeper_dark.boss.target] run return run function deeper_dark:boss/attacks/slam_start

execute if predicate deeper_dark:chance_50 at @n[type=ghast,tag=deeper_dark.boss_hitbox] if entity @n[tag=deeper_dark.boss.target] facing entity @n[tag=deeper_dark.boss.target] eyes run return run function deeper_dark:boss/attacks/sonicattack_start

# If neither of the other attacks, spread sculk
function deeper_dark:boss/attacks/sculk_charge