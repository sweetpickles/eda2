NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

coals <- rbind(SCC[grep('Coal',SCC[[3]]),], SCC[grep('Coal',SCC[[4]]),],SCC[grep('Coal',SCC[[5]]),])
coalscc <- unique(coals$SCC)

ds4 <- NEI[NEI$SCC %in% coalscc,]
p4 <- tapply(ds4$Emissions,ds4$year,sum)
p4a <- as.data.frame(as.matrix(p4))

plot(rownames(p4a),p4a$V1)
model <- lm(p4a$V1 ~ as.numeric(rownames(p4a)))
abline(model)