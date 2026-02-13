scoreboard players operation @s conflux_seasons.week = .global conflux_seasons.week
tag @s remove conflux_seasons.increment_week
advancement revoke @s only conflux_seasons:reset/week

tellraw @s [{text:"[",color:"dark_aqua"},{text:"Conflux Seasons",color:"aqua"},{text:"] ",color:"dark_aqua"},{text:"Congratulations on making it to week ",color:"dark_green"},{score:{name:"@s",objective:"conflux_seasons.week"},color:"green"},{text:" of ",color:"dark_green"},{text:"Chapter 2: Hollow Earth",color:"dark_purple"},{text:".",color:"dark_green"}]
tellraw @s [{text:"Previously completed ",color:"dark_green"},{text:"Weekly Advancement Packs",color:"green"},{text:" are once again available to complete.",color:"dark_green"}]