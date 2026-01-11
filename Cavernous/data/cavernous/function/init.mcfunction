gamerule command_block_output false

scoreboard objectives add joinmsg minecraft.custom:minecraft.play_time
scoreboard objectives add has_seen_tellraw dummy

scoreboard objectives add broke.spore_blossom minecraft.mined:spore_blossom

scoreboard objectives add thrower.check dummy

scoreboard objectives add chain_arrow.timer dummy


scoreboard objectives add single_pale_sapling.fail_counter dummy
scoreboard players set .max_fails single_pale_sapling.fail_counter 80

schedule function cavernous:hollow_earth/marble_skeleton/confirm_pacify 3s
function cavernous:secrets/init
