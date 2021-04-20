##Downloading Packages

library(tidyverse)

#remotes::install_github("allisonhorst/palmerpenguins")
library(palmerpenguins)
data(package = 'palmerpenguins')
(penguins)
(penguins_raw)

## Tibbles
penguins1 <-(penguins) 

penguins_raw1<-(penguins_raw)

penguins_raw1

Adelie<-filter(penguins_raw2, species== "Adelie Penguin (Pygoscelis adeliae)")
Adelie

Chinstrap<-filter(penguins_raw2, species== "Chinstrap penguin (Pygoscelis antarctica)")
Chinstrap

Gentoo<-filter(penguins_raw2, species== "Gentoo penguin (Pygoscelis papua)")
Gentoo

Mutate(Chinstrap, count clutch_completion)
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
 geom_jitter(mapping= aes(x= Island, y= body_mass, color= species))+
   labs(y= "Body Mass (g)")


ggplot(data=)


ggplot(data= penguins_raw2)+
   geom_bar(mapping=aes(x= species, fill= clutch_completion), position="fill")+
   labs(x= "Species", y= "Percentage of Completion", fill= "Success")+
   theme(
   axis.text=element_text(color= "black"),
   axis.text.x= element_text(angle=10, hjust = 1))

ggplot(data = Adelie)+
   geom_histogram(mapping= aes(x=body_mass), binwidth=100,
            boundary= 0, closed= "left", color = "black")+
labs(x = "Adelie Body Mass (g)", y = "Frequency (number of penguins)")+
   scale_y_continuous(breaks = seq(0, 20, 5), limits = c(0, 20), 
                      expand = expansion(mult = 0)) +
   scale_x_continuous(breaks = seq(2000, 5000, 100)) +
   theme_classic() +
   theme(
      axis.title = element_text(face = "bold"),
      axis.text = element_text(color = "black"),
      axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(data = Chinstrap)+
   geom_histogram(mapping= aes(x=body_mass), binwidth=100,
                  boundary= 0, closed= "left", color = "black")+
   labs(x = "Chinstrap Body Mass (g)", y = "Frequency (number of penguins)")+
   scale_y_continuous(breaks = seq(0, 12, 2), limits = c(0, 12), 
                      expand = expansion(mult = 0)) +
   scale_x_continuous(breaks = seq(2000, 5000, 100)) +
   theme_classic() +
   theme(
      axis.title = element_text(face = "bold"),
      axis.text = element_text(color = "black"),
      axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(data = Gentoo)+
   geom_histogram(mapping= aes(x=body_mass), binwidth=100,
                  boundary= 0, closed= "left", color = "black")+
   labs(x = "Gentoo Body Mass (g)", y = "Frequency (number of penguins)")+
   scale_y_continuous(breaks = seq(0, 14, 2), limits = c(0, 14), 
                      expand = expansion(mult = 0)) +
   scale_x_continuous(breaks = seq(3500, 6500, 100)) +
   theme_classic() +
   theme(
      axis.title = element_text(face = "bold"),
      axis.text = element_text(color = "black"),
      axis.text.x = element_text(angle = 45, hjust = 1))
## Citations



citation("ggplot2")

citation("dplyr")   
RStudio.Version()
