$item replace block ~ ~ ~ container.$(slot) with minecraft:book
$item modify block ~ ~ ~ container.$(slot) {"function":"minecraft:enchant_randomly","options":"$(enchantment)","only_compatible":false}