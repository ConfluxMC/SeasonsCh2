execute unless block ~1 ~ ~ #cavernous:torch_cannot_place_side run return run setblock ~ ~ ~ wall_torch[facing=west] replace

execute unless block ~-1 ~ ~ #cavernous:torch_cannot_place_side run return run setblock ~ ~ ~ wall_torch[facing=east] replace

execute unless block ~ ~ ~1 #cavernous:torch_cannot_place_side run return run setblock ~ ~ ~ wall_torch[facing=north] replace

execute unless block ~ ~ ~-1 #cavernous:torch_cannot_place_side run return run setblock ~ ~ ~ wall_torch[facing=south] replace

execute unless block ~ ~-1 ~ #cavernous:torch_cannot_place_top run return run setblock ~ ~ ~ torch replace

execute unless block ~ ~ ~ #cavernous:torch run return run function cavernous:items/torch_arrow/fail