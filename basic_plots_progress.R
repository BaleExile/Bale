## Magnetics

setwd("~/Dropbox/Bale/Bale-shared/cores/BAL-GGU17/plotting files")
mscl<-read.csv ("BALGGU171B_mscl_depth.csv", header=TRUE, sep=",")
library(ggplot2)
#plotting a different x axis and adding a rectangle in the tephras
ggplot(mscl, aes(x=depth, y=mscl)) + geom_line()+ scale_x_continuous(breaks=seq(0,1500, by=100))
msclp <-ggplot(mscl, aes(x=depth, y=mscl)) + geom_line()+ scale_x_continuous(breaks=seq(0,1500, by=100))
  ## define rectangle
  rect <- data.frame (xmin=105, xmax= 125, xmin= 575, xmax=590, ymin=-3, ymax=10)
  msclp+geom_rect (data=rect, aes(xmin=xmin, xmax=xmax, ymin=ymin, ymax=ymax),color="red",alpha=0.5, inherit.aes = FALSE)
```

## Slide with R Output

```{r cars, echo = TRUE}
summary(cars)
```

## Slide with Plot

```{r pressure}
plot(pressure)
```

