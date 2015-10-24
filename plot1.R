NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

p1 <- tapply(NEI$Emissions,NEI$year,sum)
p1a <- as.data.frame(as.matrix(p1))

plot(rownames(p1a),p1a$V1,main="PM2.5 Emissions vs Year for United States",xlab="year",ylab="Total Emissions (tons PM2.5)")
model <- lm(p1a$V1 ~ rownames(p1a))
abline(model)
