NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

ds5 <- NEI[NEI$fips == '24510' & NEI$type == "ON-ROAD",]
p5 <- tapply(ds5$Emissions,ds5$year,sum)
p5a <- as.data.frame(as.matrix(p5))

plot(rownames(p5a),p5a$V1)
model <- lm(p5a$V1 ~ as.numeric(rownames(p5a)))
abline(model)