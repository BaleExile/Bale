setwd("F:/R (GG)")
install(rbacon)
library(rbacon)

# Example code online #
# burnin/ssize increases amount of likely sub-optimal iterations - helps running maybe? #
# Plenty of unnecessary code for our purposes but worth exploring to see if anything can be improved #

Bacon(core = "GGv1", thick = 30, coredir = "", prob = 0.95,
      d.min = NA, d.max = NA, d.by = 0.05, depths.file = FALSE, depths = c(),
      unit = "cm", acc.shape = 1, acc.mean = 54, mem.strength = 0.8,
      mem.mean = 0.9, boundary = NA,
      add = 0, after = 1e-06, cc = 1, cc1 = "IntCal13", cc2 = "Marine13",
      cc3 = "SHCal13", cc4 = "ConstCal", ccdir = "", postbomb = 0,
      delta.R = 0, delta.STD = 0, t.a = 3, t.b = 4, normal = FALSE,
      suggest = TRUE, reswarn = c(10, 200), remember = TRUE, ask = TRUE,
      run = TRUE, defaults = "default_settings.txt", sep = ",", dec = ".",
      runname = "", slump = c(), BCAD = FALSE, th0 = c(),
      burnin = min(2000, ssize), MinYr = c(), MaxYr = c(), cutoff = 0.001,
      plot.pdf = TRUE, dark = 1, date.res = 100, yr.res = 200)

#Graciela/Lucas code
#params

thick<-30
d.by<-0.05
core.name="GGv1"
acc.mean=10
acc.shape=1.5
mem.strength=4
mem.mean=0.7
# mem.strength * (1 - mem.mean) #should be smaller than 1

Bacon(core.name, acc.mean=acc.mean, acc.shape=acc.shape, mem.mean=mem.mean, mem.strength=mem.strength, thick=thick, d.by=d.by, ask=FALSE, suggest=FALSE, plot.pdf=TRUE, depths.file=FALSE, normal=FALSE, rotate.axes=TRUE, title.location='topright', title="GGU17 1B 0.05")
