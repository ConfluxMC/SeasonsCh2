tp @s ~-1 ~ ~-1
execute store result storage cavernous:data lastfoundexitportal.x int 1 run data get entity @s Pos[0] 1
#Exit portal structure has an absolute height of 40. Bottom bedrock frame is at 43. Spawn at 45
data modify storage cavernous:data lastfoundexitportal.y set value 45
execute store result storage cavernous:data lastfoundexitportal.z int 1 run data get entity @s Pos[2] 1
kill @s