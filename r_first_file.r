#this is the first file in my r folder

#we want to enter our operating system with r and create a folder (called "lab") that r can join
#with the following lines we are going to be able to import and exportd data
#setwd("C:\monitoring_lab")
#to protect the path, we use the quote. exiting r needs the quote. it is safe. 
setwd("C:/monitoring_lab/")

#write.table function
write.table(tab, file="first_table.txt")

#we want import a file or a table, how do we import that?
#read.table("file")
read.table ("first_table.txt")
#assign an object to the external table
tab_1 <- read.table ("first_table.txt")

#let's do the first statistics 
#function of summary of statistics
summary (tab_1)
#we want to extract summary only on one variable
#$ is a linking symbol 
summary(tab_1$fishes)

#histogram
hist(tab_1$fishes)
