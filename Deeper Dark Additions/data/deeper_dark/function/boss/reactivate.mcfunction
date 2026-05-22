kill @n[type=item,distance=..3,predicate=deeper_dark:item_destabilized_anticatalyst]
function deeper_dark:boss/activate
tag @n[type=ghast,distance=..5,tag=deeper_dark.boss_hitbox] add deeper_dark.boss_reactivated