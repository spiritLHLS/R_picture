# 刻度大小调整
par(cex.lab = 2.5, cex.axis = 2.5, cex.tick = 2.5)
# cex.lab 坐标轴名字大小
# cex.axis 坐标轴上字符大小
# cex.tick 坐标轴上刻度大小

# 调整图片四周边距 底 左 顶 右
par(mar = c(5, 6, 4, 2) + 0.1) 

# mgp[1]: 表示刻度标签与刻度线之间的距离（默认值为 3）
# mgp[2]: 表示刻度线与坐标轴标签之间的距离（默认值为 1.5）
# mgp[3]: 表示坐标轴标签与坐标轴之间的距离（默认值为 0）
par(mgp = c(3, 1.5, 0))
