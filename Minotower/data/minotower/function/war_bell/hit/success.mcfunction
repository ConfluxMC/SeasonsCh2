execute as @n[distance=..32,nbt={HurtTime:10s}] at @s on attacker if entity @s[advancements={minotower:war_bell/hit_success=true}] as @n[distance=..0.5,nbt={HurtTime:10s}] run function minotower:war_bell/hit/as_target
advancement revoke @s only minotower:war_bell/hit_success

# Mark hit as successful
scoreboard players set @s minotower.war_bell_hit 1
# Extend active countdown to 8 seconds
scoreboard players set @s minotower.war_bell_active_countdown 160
# If bell has revitalizing, increase countdown add 8 seconds to countdown
execute if items entity @s weapon.offhand goat_horn[enchantments~[{enchantments:"minotower:revitalizing"}]] run scoreboard players add @s minotower.war_bell_active_countdown 160

# If bell is fully charged (and bell does not have revitalizing)
execute if predicate minotower:war_bell/full_charge unless items entity @s weapon.offhand goat_horn[enchantments~[{enchantments:"minotower:revitalizing"}]] run return run function minotower:war_bell/hit/full_charge/run

# If not fully charged
function minotower:war_bell/hit/feedback
item modify entity @s weapon.offhand minotower:war_bell/charge
item modify entity @s weapon.offhand minotower:war_bell/apply_attributes