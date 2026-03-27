execute in minecraft:overworld store result score .actual conflux_worldborder run worldborder get
execute in minecraft:overworld if score .global conflux_worldborder = .actual conflux_worldborder run return 1

# Only run this if worldborder of .global and .actual are different
tellraw @s {text: "Expected and actual worldborder sizes do not match. Correcting now.", color: "red"}
execute store result storage conflux_seasons:worldborder distance double 1 run scoreboard players get .global conflux_worldborder
function conflux_seasons:worldborder/fix1 with storage conflux_seasons:worldborder