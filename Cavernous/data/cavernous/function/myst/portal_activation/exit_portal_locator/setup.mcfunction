# Structure locator code taken from Deeper Dark datapack by EMD0123
kill @e[tag=cavernous_exit_portal.locator]

#start locating
execute in cavernous:the_myst summon minecraft:marker at @s run function cavernous:myst/portal_activation/exit_portal_locator/align_to_chunk

#give armor stand locator compass
execute as @s run function cavernous:myst/portal_activation/exit_portal_locator/give with storage cavernous:data lastfoundexitportal

data remove storage cavernous:data lastfoundexitportal
kill @e[tag=cavernous_exit_portal.locator]