scoreboard players operation @s conflux_seasons.day = .global conflux_seasons.day
tag @s remove conflux_seasons.increment_day
advancement revoke @s only conflux_seasons:reset/day

tellraw @s [{text:"[",color:"dark_aqua"},{text:"Conflux Seasons",color:"aqua"},{text:"] ",color:"dark_aqua"},{text:"Welcome to day ",color:"dark_green"},{score:{name:"@s",objective:"conflux_seasons.day"},color:"green"},{text:" of ",color:"dark_green"},{text:"Chapter 2: Hollow Earth",color:"dark_purple"},{text:".",color:"dark_green"}]
tellraw @s [{text:"Previously completed ",color:"dark_green"},{text:"Daily Advancement Packs",color:"green"},{text:" are once again available to complete.",color:"dark_green"}]