#we are going to calculate the biomass, that is the Primary production
#GPP: = gross primary production, NEP + energy used by respiration
# R code for estimating energy in ecosystems

# install.packages("raster")
# install.packages("rgdal")

library(raster)
library(rgdal)

# Set the working directory

setwd("C:/monitoring_lab/")  # windows
# setwd("/Users/name/lab/") # mac

# importing the data
l1992 <- brick("defor1_.png") # image of 1992
l1992 

# Bands: defor1_.1, defor1_.2, defor1_.3 
# plotRGB
plotRGB(l1992, r=1, g=2, b=3, stretch="Lin")

# defor1_.1 = NIR
# defor1_.2 = red
# defor1_.3 = green

plotRGB(l1992, r=2, g=1, b=3, stretch="Lin")
plotRGB(l1992, r=2, g=3, b=1, stretch="Lin")

#day2
l2006 <- brick("defor2_.png") #2006 image
l2006
#plotting the second image
plotRGB(l2006, r=1, g=2, b=3, stretch="Lin")

#water is absorbing NIR, if water have a lot of soil inside it  becomes whiter with this plotting

#we use par function. mrow defines the number of rows and then columns. so we are having 2 rows and 1 column
par(mfrow = c(2,1))
plotRGB(l1992, r=1, g=2, b=3, stretch="Lin")
plotRGB(l2006, r=1, g=2, b=3, stretch="Lin")

#DVI = a leaf absorbs a lot of red radiation. 
#NDVI = NIR - RED
# we are going to use the red and the NIR.
dev.off()
DVI1992 <- l1992$defor1_.1 - l1992$defor1_.2
DVI1992
cl <- colorRampPalette(c('darkblue','yellow','red','black'))(100) # specifying a color scheme
plot(DVI1992, col = cl)

#NDVI for 2006
DVI2006 <- l2006$defor2_.1 - l2006$defor2_.2
DVI2006
cl <- colorRampPalette(c('darkblue','yellow','red','black'))(100) # specifying a color scheme
plot(DVI2006, col=cl)

par(mfrow = c(2,1))
plot(DVI1992, col = cl)
plot(DVI2006, col=cl)
