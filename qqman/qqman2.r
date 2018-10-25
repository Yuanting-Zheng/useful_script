setwd('/Users/mac/Desktop/123')#  设置工作目录
library(qqman) # 载入包
data <- read.table("5filter_result.assoc.linear",header = TRUE) #读取数据
data1 <- data[,c(1,2,3,9)] #按照规则截取列
data2 <- na.omit(data1) # 删除含有NA的整行
par(cex=0.8) #设置点的大小
color_set <- rainbow(9) # 设置颜色集合 建议c("#8DA0CB","#E78AC3","#A6D854","#FFD92F","#E5C494","#66C2A5","#FC8D62")

svg(file="manpic.svg", width=12, height=8)# 保存svg格式的图片 设置名字 
#manhattan(data2,main="Manhattan Plot",col = color_set) #suggestiveline = FALSE 更加显著
manhattan(data2,main="Manhattan Plot",col = c("#8DA0CB","#E78AC3","#A6D854","#FFD92F","#E5C494","#66C2A5","#FC8D62"),suggestiveline = FALSE,annotatePval = 0.01) #suggestiveline = FALSE 更加显著
dev.off() # 保存图片

#par() 显示当前图像参数


str(gwasResults)  #zscore beita 值除以standard error 这个值越大 P越小
head(gwasResults) # 看前面几行
tail(data2) #看后面几行
as.data.frame(table(gwasResults$CHR))# 这个是没根染色体上有多少SNP
as.data.frame(table(data2$CHR)) # 这个是没根染色体上有多少SNP

qq(gwasResults$P) # 画qq图
qq(data2$P) # 画qq图

manhattan(gwasResults, annotatePval = 0.01) # 这个可以对每根染色体上最高的那个点注释出来









manhattan(gwasResults)


color_set <- c("#8DA0CB","#E78AC3","#A6D854","#FFD92F","#E5C494","#66C2A5","#FC8D62")
par(cex=0.8)
manhattan(gwasResults,col = color_set,annotatePval = 0.01)










