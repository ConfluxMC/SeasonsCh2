execute as @a[tag=to_refund_bloodbound_potion] run clear @s glass_bottle 1
loot give @a[tag=to_refund_bloodbound_potion] loot cavernous:secrets/items/bloodbound_potion
tag @a[tag=to_refund_bloodbound_potion] remove to_clear_glass_bottle