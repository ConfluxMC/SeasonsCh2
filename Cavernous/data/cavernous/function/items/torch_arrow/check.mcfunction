execute unless block ~ ~ ~ #cavernous:torch_replaceable run return run function cavernous:items/torch_arrow/fail

# Playsound if successful
execute if function cavernous:items/torch_arrow/place run function cavernous:items/torch_arrow/place_effects
kill @s