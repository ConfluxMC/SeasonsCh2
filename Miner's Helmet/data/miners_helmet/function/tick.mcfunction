execute as @e[predicate=miners_helmet:wearing_miners_helmet] at @s run function miners_helmet:tick_wearer
execute as @e[type=marker,tag=miningHelmetMarker] at @s run function miners_helmet:light

execute as @a[advancements={miners_helmet:using_spyglass=true}] run advancement revoke @s only miners_helmet:using_spyglass