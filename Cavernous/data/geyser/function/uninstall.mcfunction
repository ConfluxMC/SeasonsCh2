

scoreboard objectives remove geyser.msg
scoreboard objectives remove geyser.msg.acknowledged
scoreboard objectives remove rand.1
scoreboard objectives remove geyser.can_place
scoreboard objectives remove geyser.ambient_timer
scoreboard objectives remove geyser.ambient_timer.max
scoreboard objectives remove geyser.event_selector
scoreboard objectives remove geyser.time_stood_on
scoreboard objectives remove geyser.power.powered
scoreboard objectives remove geyser.power.activated
scoreboard objectives remove geyser.active
scoreboard objectives remove is_flying
scoreboard objectives remove geyser.effect_timer


clear @a magma_cube_spawn_egg[entity_data={id:block_display,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.7f,0.5f,0.7f],translation:[-0.25f,-0.95f,-0.25f]},block_state:{Name:magma_block}}] 1

scoreboard players set .global geyser.uninstalled 1
scoreboard players set .global geyser.has_uninstalled 1



