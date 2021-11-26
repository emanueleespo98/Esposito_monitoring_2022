#now we will learn how to load several data
#that is called "time series" analysis. 
#we are going to analyse how things changed during time
#load time series of changes of NO gases during lockdown
setwd("C:/monitoring_lab/EN/")
library(raster)

#raster function is used to import and create a single layer object. 
EN01 <- raster("EN_0001.png")
#this files are 8 bit images. that is the radiometric resolution
#8 bit = 0-255 (total 256) different colours in a band
cl <- colorRampPalette(c('red','orange','yellow'))(100) 
plot(EN01, col = cl)
EN02 <- raster("EN_0002.png")
EN13 <- raster("EN_0013.png")
plot(EN13, col = cl)

#build a multiframe window with 2 rows and 1 column 
 
par(mfrow = c(2, 1))
plot(EN01, col = cl)
plot(EN13, col = cl)

#import all the images
EN01 <- raster("EN_0001.png")
EN02 <- raster("EN_0002.png")
EN03 <- raster("EN_0003.png")
EN04 <- raster("EN_0004.png")
EN05 <- raster("EN_0005.png")
EN06 <- raster("EN_0006.png")
EN07 <- raster("EN_0007.png")
EN08 <- raster("EN_0008.png")
EN09 <- raster("EN_0009.png")
EN10 <- raster("EN_0010.png")
EN11 <- raster("EN_0011.png")
EN12 <- raster("EN_0012.png")
EN13 <- raster("EN_0013.png")

#plot all the data together
par(mfrow = c(4, 4))
plot(EN01, col = cl)
plot(EN02, col = cl)
plot(EN03, col = cl)
plot(EN04, col = cl)
plot(EN05, col = cl)
plot(EN06, col = cl)
plot(EN07, col = cl)
plot(EN08, col = cl)
plot(EN09, col = cl)
plot(EN10, col = cl)
plot(EN11, col = cl)
plot(EN12, col = cl)
plot(EN13, col = cl)

#how to avoid the repetition? stack
#satellite images are built as a stack
EN <- stack(EN01, EN02, EN03, EN04, EN05, EN06, EN07, EN08, EN09, EN10, EN11, EN12, EN13)

#plot the stack
#we do not need the par. just plot the stack
plot(EN, col = cl)

#plot just the first images
plot(EN$EN_0001, col = cl)


