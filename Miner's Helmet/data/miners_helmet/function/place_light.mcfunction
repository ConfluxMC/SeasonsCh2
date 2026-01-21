execute if block ~ ~ ~ air run setblock ~ ~ ~ light[level=13,waterlogged=false]
execute positioned ~ ~ ~ if predicate miners_helmet:not_flowing if block ~ ~ ~ water run setblock ~ ~ ~ light[level=10,waterlogged=true]

execute if block ~ ~1 ~ air run setblock ~ ~1 ~ light[level=13,waterlogged=false]
execute positioned ~ ~1 ~ if predicate miners_helmet:not_flowing if block ~ ~ ~ water run setblock ~ ~ ~ light[level=10,waterlogged=true]