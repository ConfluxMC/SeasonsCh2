library(tidyverse)
library(sqldf)
library(RColorBrewer)
library(ggpubr)
library(png)

ore_distribution


mydata <- sqldf("select od.id, od.ore oreId, o.ore ore, o.color cname, od.dimension, od.biomes, od.type,
 --     max(min((od.count*od.size)/25.0,25),10) count,
      max(min((od.count*od.size)/5.0,150),10) count,
 --     od.count*od.size count,
      if(od.minType='ab', d.bottom+od.min, if(od.minType='bt', d.top-od.min, od.min)) min,
      if(od.maxType='ab', d.bottom+od.max, if(od.maxType='bt', d.top-od.max, od.max)) max
      from ore_distribution od
        inner join dimensions d on od.dimension = d.id
        inner join ores o on od.ore = o.id")


# Get total counts
mydata <- sqldf("select o.id, o.oreId, o.ore, o.cname, o.dimension, o.biomes, o.type, o.count, c.totalCount, min, max from mydata o
      inner join (select oreId, SUM(count) totalCount from (select oreId, max(count) count, type from mydata group by oreId, type) group by oreId) c on o.oreId = c.oreId")

mydata

# Select Dimension
#mydata <- sqldf("select * from mydata where dimension = 'ow'")
mydata <- sqldf("select * from mydata where dimension = 'my'")
#mydata <- sqldf("select * from mydata where dimension = 'dd'")


mydata <- sqldf("select id, oreId, ore, cname, dimension, biomes, type, count, totalCount,
        if(type=0,0,count) x,
        if(type=0,min,(min+max)/2) y
      from mydata
      union
      select id, oreId, ore, cname, dimension, biomes, type, count, totalCount, x, y from (
        select id, oreId, ore, cname, dimension, biomes, type, count, totalCount, x, y from (
          select id, oreId, ore, cname, dimension, biomes, type, count, totalCount, 0 x, max y from mydata a  -- top left
          union
          select id, oreId, ore, cname, dimension, biomes, type, count, totalCount, if(type=0,count,0) x, max y from mydata b) -- top right
        )
        union
        select id, oreId, ore, cname, dimension, biomes, type, count, totalCount, x, y from (
          select id, oreId, ore, cname, dimension, biomes, type, count, totalCount, if(type=0,count,0) x, min y from mydata b -- bottom right
          union
          select id, oreId, ore, cname, dimension, biomes, type, count, totalCount, 0 x, min y from mydata a) -- bottom left
      order by oreId
")

# Swap order of rectangle corners so they get properly drawn as rectangles
i <- 1
thirdx <- -1
thirdy <- -1
for(c in 1:nrow(mydata))
{
  if (mydata[c,"type"] == 0)
  {
    if (i == 3) {
      thirdx <- mydata[c,"x"]
      thirdy <- mydata[c,"y"]
    }
    
    if (i == 4) {
      if (mydata[c-1,"x"] != mydata[c-2,"x"] && mydata[c-1,"y"] != mydata[c-2,"y"]){
        mydata[c-1,"x"] <- mydata[c,"x"]
        mydata[c-1,"y"] <- mydata[c,"y"]
        mydata[c,"x"] <- thirdx
        mydata[c,"y"] <- thirdy
      }
      i <- 1
    }
    else
    {
      i <- i + 1
    }
  } else {
    i <- 1
  }
}

mydata


# Push trapezoids to the left of rectangles
largestWidths <- data.frame(oreId=integer(),width=double())
for(c in 1:nrow(mydata))
{
  if (!any(largestWidths$oreId == mydata[c,"oreId"]))
  {
    largestWidths[nrow(largestWidths) + 1,] = c(mydata[c,"oreId"], 0)
  }
  if (mydata[c,"type"] == 0)
  {
    if (largestWidths[largestWidths$oreId == mydata[c,"oreId"],]$width < mydata[c,"count"])
    {
      largestWidths[largestWidths$oreId == mydata[c,"oreId"],]$width = mydata[c,"count"]
    }
  }
}
largestWidths


#offsetData <- sqldf("
#select (select SUM(asum) from ( --cteRanked
#      select asum, oreId, ROW_NUMBER() OVER(ORDER BY oreId) rownum from ( --cte
#        select oreId, SUM(count) asum from (select oreId, max(count) count, type from mydata group by oreId, type) group by oreId
#      )
#) c2 where c2.rownum <= c1.rownum
#) xOffset, oreId from ( --cteRanked
#      select asum, oreId, ROW_NUMBER() OVER(ORDER BY oreId) rownum from ( --cte
#        select oreId, SUM(count) asum from (select oreId, max(count) count, type from mydata group by oreId, type) group by oreId
#      )
#) c1")
#offsetData
mydata <- sqldf("select o.id, o.oreId, ore, cname, dimension, biomes, type, count, totalCount, IF(type=0, 0, lg.width) as xoffset, x, y from mydata o
--      inner join offsetData off on off.oreId = o.oreId
      inner join largestWidths lg on lg.oreId = o.oreId")

#initOffset <- 0
currOre <- mydata[1, "oreId"]
currCount <- mydata[1, "totalCount"]
addOffset = 0
addMargin = 0
initOffset <- mydata[1,"xoffset"]
for(c in 1:nrow(mydata))
{
  if (currOre != mydata[c,"oreId"])
  {
    addOffset <- addOffset + currCount
    addMargin <- addMargin + 10
    currCount <- mydata[c,"totalCount"]
    currOre <- mydata[c,"oreId"]
  }
  mydata[c,"xoffset"] <- mydata[c,"xoffset"] + addOffset + addMargin
}

mycolors <- list()
for(q in 1:nrow(ores)) {
  mycolors[ores[q,"ore"]] = ores[q,"color"]
}

setwd("D:/Modding/Minecraft Mods/SeasonsCh2/Ore Chart")
img.ow <- "D:/Modding/Minecraft Mods/SeasonsCh2/Ore Chart/cavenoise2.png"
img.my <- "D:/Modding/Minecraft Mods/SeasonsCh2/Ore Chart/mystnoise.png"
img.dd <- "D:/Modding/Minecraft Mods/SeasonsCh2/Ore Chart/deeperdarknoise.png"
img <- png::readPNG(img.my)

limits.ow <- c(-64,320)
limits.my <- c(-32,352)
limits.dd <- c(-64,128)

limitsy <- limits.my

limitsx <- c(0,576)


# Select Biome
#mydata <- sqldf("select * from mydata where biomes = 'all'")
#mydata <- sqldf("select * from mydata where biomes = 'all' OR biomes like '%icy%'")
mydata <- sqldf("select * from mydata where biomes like '%noxwood%'")

ggplot(mydata, aes(x=x+((oreId-1))+xoffset,y=y)) +
  background_image(img) +
#ggplot(mydata, aes(x=x+xOffset,y=y)) +
  geom_polygon(aes(fill = ore, group = id), color = '#9cd0da46', linewidth = 1, linetype = 1) +
  labs(dictionary = c(ore = "Ores")) +
  coord_cartesian(ylim = limitsy, expand = FALSE
                 ,xlim = limitsx) +
  scale_y_continuous(
    breaks = c(-64,-32,0,32,64,96,128,160,192,224,256,288,320,352),
    minor_breaks = c(-48,-16,16,48,80,112,144,176,208,240,272,304,336)) +
  scale_x_continuous(name = "Density", labels = NULL, n.breaks = NULL, breaks = NULL) +
  scale_fill_manual(values=mycolors) +
  theme(panel.grid.major.y = element_line(color = '#c7c8c833',
                                          linewidth = 1,
                                          linetype = 5),
        panel.grid.minor.y = element_blank(),
        panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.background = element_blank(),
        panel.ontop = TRUE,
        legend.background = element_rect(fill = '#373737'),
        legend.title = element_text(color = '#DDDDDD', size = 20, face = 'bold'),
        legend.text = element_text(color = '#DDDDDD'),
        plot.background = element_rect(fill = '#0A0A0A'),
        axis.text.y = element_text(color = '#DDDDDD'),
        axis.title.x = element_text(color = '#DDDDDD', face = 'bold'),
        axis.title.y = element_text(color = '#DDDDDD', face = 'bold', angle = 0, vjust = 0.5)
  )