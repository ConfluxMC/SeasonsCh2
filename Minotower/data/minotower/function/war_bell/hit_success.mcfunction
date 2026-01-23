execute as @n[distance=..32,nbt={HurtTime:10s}] at @s on attacker if entity @s[advancements={minotower:war_bell/hit_success=true}] as @n[distance=..0.5,nbt={HurtTime:10s}] run function minotower:war_bell/hit_as_target
advancement revoke @s only minotower:war_bell/hit_success

# Mark hit as successful
scoreboard players set @s minotower.war_bell_hit 1
# Extend active countdown to 8 seconds
scoreboard players set @s minotower.war_bell_active_countdown 160

# If bell is fully charged
execute if predicate minotower:war_bell/full_charge run return run function minotower:war_bell/hit_full_charge

# If not fully charged
particle minecraft:trial_spawner_detection ~ ~0.5 ~ 1 0 1 0 60
playsound minotower:item.war_bell player @a ~ ~ ~ 1 1.3
item modify entity @s weapon.offhand minotower:war_bell/charge
item modify entity @s weapon.offhand minotower:war_bell/apply_attributes