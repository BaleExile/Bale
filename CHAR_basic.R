#CHAR plotting and basic analyses

setwd("~/Dropbox/Bale/Bale-Graciela/proxies/charcoal")
char <- read.csv("BALGGU171B_CHAR_age.csv")

install.packages("ggplot2")
library(ggplot2)

#plotting a basic histogram with CHAR (#/cm2 yr) vs time (Ka BP from median age on a Bacon model)
ggplot(char, aes(x=(kaBP), y=CHAR))+ geom_bar (stat="identity")

#filling the diagram in with a red colour
ggplot(char, aes(x=(kaBP), y=CHAR))+ geom_bar (stat="identity", fill="red", colour="red")

#create object with this plot
bar <-ggplot(char, aes(x=(kaBP), y=CHAR))+ geom_bar (stat="identity", fill="red", colour="red")

#adding the macrocharcoal line scaled so it fits the y values of CHAR
barline <- bar + geom_line(data=char, aes(y=macrocharcoal/5), colour="black")

#adding a secondary axis and, very important, reverting the above transformation. 
#Adding tick marks in x axis to each millenia and changing names. 
barline + scale_y_continuous(sec.axis = sec_axis(~.*5, name = "macrocharcoal"), name=("CHAR(#/cm2 yr)"))+ scale_x_continuous(breaks=seq(0,15, by=1), name = ("age (cal ka BP)"))

#changing axis titles
titleCHAR <-barline + scale_y_continuous(sec.axis = sec_axis(~.*5, name = "macrocharcoal"), name=("CHAR(#/cm2 yr)"))+ scale_x_continuous(breaks=seq(0,15, by=1), name = ("age (cal ka BP)"))
titleCHAR +ggtitle("BALGGU17-1B\nMacrocharcoal and CHAR")+theme(plot.title=element_text(vjust=-2.5))

#plotting mscl vs depth 
setwd("~/Dropbox/Bale/Bale-shared/cores/BAL-GGU17/plotting files")
mscl<-read.csv ("BALGGU171B_mscl_depth.csv", header=TRUE, sep=",")

#plotting a different x axis and adding a rectangle in the tephras
ggplot(mscl, aes(x=depth, y=mscl)) + geom_line()+ scale_x_continuous(breaks=seq(0,1500, by=100))
msclp <-ggplot(mscl, aes(x=depth, y=mscl)) + geom_line()+ scale_x_continuous(breaks=seq(0,1500, by=100))
  ## define rectangle
  rect <- data.frame (xmin=105, xmax= 125, xmin= 575, xmax=590, ymin=-3, ymax=10)
  msclp+geom_rect (data=rect, aes(xmin=xmin, xmax=xmax, ymin=ymin, ymax=ymax),color="red",alpha=0.5, inherit.aes = FALSE)

#plotting 