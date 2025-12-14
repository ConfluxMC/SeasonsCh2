execute positioned ~1 ~ ~ store result score Game cavernous_exit_portal.distx+1 run locate structure cavernous:exit_portal
execute positioned ~-1 ~ ~ store result score Game cavernous_exit_portal.distx-1 run locate structure cavernous:exit_portal
execute positioned ~ ~ ~1 store result score Game cavernous_exit_portal.distz+1 run locate structure cavernous:exit_portal
execute positioned ~ ~ ~-1 store result score Game cavernous_exit_portal.distz-1 run locate structure cavernous:exit_portal
scoreboard players operation Game cavernous_exit_portal.distx-1 -= Game cavernous_exit_portal.distx+1
scoreboard players operation Game cavernous_exit_portal.distz-1 -= Game cavernous_exit_portal.distz+1
execute unless score Game cavernous_exit_portal.distx+1 matches 2 if score Game cavernous_exit_portal.distx-1 matches 1..3 at @s run tp @s ~16 ~ ~
execute unless score Game cavernous_exit_portal.distx+1 matches 2 if score Game cavernous_exit_portal.distx-1 matches -3..-1 at @s run tp @s ~-16 ~ ~ 
execute unless score Game cavernous_exit_portal.distz+1 matches 2 if score Game cavernous_exit_portal.distz-1 matches 1..3 at @s run tp @s ~ ~ ~16
execute unless score Game cavernous_exit_portal.distz+1 matches 2 if score Game cavernous_exit_portal.distz-1 matches -3..-1 at @s run tp @s ~ ~ ~-16

execute if score Game cavernous_exit_portal.distx+1 matches 2 if score Game cavernous_exit_portal.distz+1 matches 2 run return run function cavernous:myst/portal_activation/exit_portal_locator/end
execute if score Game cavernous_exit_portal.distx+1 matches 0 if score Game cavernous_exit_portal.distz+1 matches 0 run return fail 
execute as @s positioned as @s run function cavernous:myst/portal_activation/exit_portal_locator/locate