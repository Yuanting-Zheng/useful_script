setwd('/Users/mac/Desktop/123')
library(qqman)
data <- read.table("test",header = TRUE)
head(data)
data1 <- data[,c(1,2,3,9)]
head(data1)
manhattan(data1)
data2 <- na.omit(data1)
head(data2)
manhattan(data2)
par(cex=0.8)
manhattan(data2,main="Manhattan Plot",col = c("#8DA0CB","#E78AC3","#A6D854","#FFD92F","#E5C494","#66C2A5","#FC8D62"),suggestiveline = FALSE)
par()

setwd('/Users/mac/Desktop/123')
library(qqman)
data <- read.table("filter.assoc.linear",header = TRUE)
head(data)
data1 <- data[,c(1,2,3,9)]
head(data1)
manhattan(data1)
data2 <- na.omit(data1)
head(data2)
manhattan(data2)
par(cex=0.8)
manhattan(data2,main="Manhattan Plot",col = c("#8DA0CB","#E78AC3","#A6D854","#FFD92F","#E5C494","#66C2A5","#FC8D62"),suggestiveline = FALSE)
par()

data <- read.table("pca.eigenvec",header = F)
head(data)
plot(data$V3,data$V4)


setwd('/Users/mac/Desktop/123')
library(qqman)
data <- read.table("2filter.assoc.linear",header = TRUE)
head(data)
data1 <- data[,c(1,2,3,9)]
#head(data1)
#manhattan(data1)
data2 <- na.omit(data1)
head(data2)
#manhattan(data2)
par(cex=0.8)
manhattan(data2,main="Manhattan Plot",col = c("#8DA0CB","#E78AC3","#A6D854","#FFD92F","#E5C494","#66C2A5","#FC8D62"),suggestiveline = FALSE)
par()






