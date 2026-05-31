execute if items entity @s weapon.mainhand poisonous_potato[custom_data={everything_omelet_replacer:true}] run item modify entity @s weapon.mainhand everything_omelet:reset_omelet
execute if items entity @s weapon.offhand poisonous_potato[custom_data={everything_omelet_replacer:true}] run item modify entity @s weapon.offhand everything_omelet:reset_omelet

advancement revoke @s only everything_omelet:function/replace_omelet
advancement revoke @s only everything_omelet:function/replace_omelet_replacer