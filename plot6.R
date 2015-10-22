NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

ds6 <- subset(NEI,fips == '24510' | fips == '06037')
ds6 <- ds6[ds6$type == 'ON-ROAD',]
p6 <- aggregate(Emissions ~ year + fips, data = ds6, sum)
with(p6, qplot(year,Emissions,color=fips,geom='line'))