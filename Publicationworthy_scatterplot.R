library(ggplot2)
library(dplyr)
graph=read.csv("GC_content.csv")
graphed=ggplot(aes(x=G,,y=C,color=Species,alpha=I(0.5)),data=graph) + #set axes variables and color/transparency of points
  geom_point() + #making it a scatterplot
  theme_classic() + #using the classic theme
  labs(title="%G versus %C in sequence data of 3 species") + #adding title
  scale_y_continuous("Percent of nucleotides represented by cytosine",breaks=seq(0,50,5)) + #adjusting y axis
  scale_x_continuous("Percent of nucleotides represented by guanine",breaks=seq(0,50,5)) + #adjusting x axis
  scale_color_manual(values=c("red","green","blue"),labels = c("Species 1","Species 2","Species 3"), name="Species") #adjusting legend
