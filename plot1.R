NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

p1 <- tapply(NEI$Emissions,NEI$year,sum)
p1a <- as.data.frame(as.matrix(p1))

plot(rownames(p1a),p1a$V1)
model <- lm(p1a$V1 ~ rownames(p1a))
abline(model)
