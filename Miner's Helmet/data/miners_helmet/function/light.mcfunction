scoreboard players operation $current miners_helmet.id = @s miners_helmet.id
execute if entity @e[predicate=miners_helmet:wearing_miners_helmet,predicate=miners_helmet:miners_helmet_id] run return run function miners_helmet:helmet_active
function miners_helmet:helmet_inactive