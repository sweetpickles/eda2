NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

ds2 <- NEI[NEI$fips == '24510',]
p2 <- tapply(ds2$Emissions,ds2$year,sum)
p2a <- as.data.frame(as.matrix(p2))

plot(rownames(p2a),p2a$V1)
model <- lm(p2a$V1 ~ as.numeric(rownames(p2a)))
abline(model)
