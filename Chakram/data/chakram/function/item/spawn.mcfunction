playsound minecraft:entity.sniffer.drop_seed master @a ~ ~ ~ 0.5 1
$execute if entity @s run summon minecraft:item ~ ~ ~ {Item:$(item)}
kill @s