library(raster)
library(RStoolbox)

# no library?
# install.packages(c("raster","RStoolbox"))


 setwd("C:/monitoring_lab/")  # windows

l2011 <- brick("p224r63_2011.grd")
#plottin RGB
#red is 1
#green is 2
#blue is 3
#NIR is 4
#with stretch argument you can extend in a proper way the plotting. instead you have just 0 or 1.
#the minimum value become the new 0, the maximum become the new 1
plotRGB(l2011, r = 4, b = 1, g = 2, stretch = "Lin")

#histogram stretching. S shaped
plotRGB(l2011, r = 4, b = 1, g = 2, stretch = "Hist")

l1988 <- brick("p224r63_1988.grd")
plotRGB(l1988, r = 4, b = 1, g = 2, stretch = "Lin")
#difference between 1988 and 2011
par(mfrow=c(1,2))
plotRGB(l2011, r = 4, b = 1, g = 2, stretch = "Lin")
plotRGB(l1988, r = 4, b = 1, g = 2, stretch = "Lin")
#if you put NIR band in blue, you enanche the agricultural areas
par(mfrow=c(1,2))
plotRGB(l2011, r = 2, b = 4, g = 3, stretch = "Lin")
plotRGB(l1988, r = 2, b = 4, g = 3, stretch = "Lin")

#we can use r to measure energy flows
#two images from Mato grosso, brasil
