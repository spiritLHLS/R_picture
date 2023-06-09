# 安装和加载需要的软件包
# install.packages("plot3D")
# install.packages("readxl")
# install.packages("rgl")

library(readxl)
library(plot3D)

#保存为pdf
pdf("scatter3D.pdf", width = 10, height = 10)

# 读取数据
data <- read_excel("583drugs39cellsynergy.xlsx", sheet = 1)
# data <- read.csv("583drugs39cellsynergy.csv", header=TRUE, row.names=1)

# 删除第一二列
data <- data[, -c(1,2)]

# 创建 x, y, z 向量
x <- rep(1:nrow(data), ncol(data))
y <- rep(1:ncol(data), each=nrow(data))
z <- as.vector(as.matrix(data))


# 绘制三维散点图
scatter3D(x=x, y=y, z=z, colvar=z, bty="g", pch=16, cex=1.5, 
          theta=30, phi=10, xlab="Drugs Combination", ylab="Cells", zlab="Value", cex.lab = 2, cex.axis = 1.6)
          
dev.off()
