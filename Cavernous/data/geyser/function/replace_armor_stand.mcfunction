setblock ~ ~1 ~ air
execute as @s[tag=generated] run summon block_display ~ ~1 ~ {Tags:["geyser","generated"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.7f,0.5f,0.7f],translation:[-0.35f,-0.45f,-0.35f]},block_state:{Name:magma_block}}
execute as @s[tag=!generated] run summon block_display ~ ~1 ~ {Tags:["geyser"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.7f,0.5f,0.7f],translation:[-0.35f,-0.45f,-0.35f]},block_state:{Name:magma_block}}
kill @s