playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.4 0.7
$execute if entity @s run summon minecraft:item ~ ~ ~ {Item:$(item)}
kill @s