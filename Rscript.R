##Downloading Packages
library(tidyverse)
library(ggplot2)
install.packages("palmerpenguins")

remotes::install_github("allisonhorst/palmerpenguins")
library(palmerpenguins)
data(package = 'palmerpenguins')
(penguins)
(penguins_raw)

## Tibbles
penguins1 <-(penguins) 

penguins_raw1<-(penguins_raw)

penguins_raw1

##Rename

names(penguins_raw1)

penguins_raw2 <-rename(penguins_raw1,
       clutch_completion =`Clutch Completion`,
       body_mass = `Body Mass (g)`,
       species = Species)
penguins_raw2


## Variable manipulation

filter(penguins_raw2,
       species=  )

number<-count(penguins_raw2, clutch_completion)
      
number
##Graphs
ggplot(data= penguins_raw2) +
 geom_jitter(mapping= aes(x= Island, y= body_mass, color= species))

ggplot(data= penguins_raw2)+ 
       geom_bar(mapping = aes(color= clutch_completion, x= species))

ggplot(data= penguins_raw2)+ 
       geom_bar(mapping =aes(x= species))

ggplot(data= penguins_raw2)+
   geom_bar(mapping=aes(x= clutch_completion))+ 
   fill("yes"= blue, "no"=red)

