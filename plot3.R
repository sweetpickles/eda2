NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

ds3 <- NEI[NEI$fips == '24510',]
p3 <- aggregate(Emissions ~ year + type, data = ds3, sum)

with(p3, qplot(year,Emissions,color=type,geom='line'))
