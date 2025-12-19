execute as @s[type=player] run function geyser:launch/move {"power":2}
data modify entity @s[type=!player] Motion[1] set value 1.5
advancement grant @s[predicate=cavernous:in_volcanic] only cavernous:come_on_geys