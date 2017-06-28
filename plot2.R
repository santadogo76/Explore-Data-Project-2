Question 2
# Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") 
# from 1999 to 2008? Use the base plotting system to make a plot answering this question

## Subset the data for fips == “24510” and then aggregate them by summing the Emissions per years
NEIdataBaltimore<-subset(NEIdata, fips == "24510")
totalEmissionBaltimore <- aggregate(Emissions ~ year, NEIdataBaltimore, sum)
totalEmissionBaltimore

## Plotting the Total Emissions for baltimore over Time
barplot(
  (totalEmissionBaltimore$Emissions)/10^6,
  names.arg=totalEmissionBaltimore$year,
  xlab="Year",
  ylab="PM2.5 Emissions (10^6 Tons)",
  main="Total PM2.5 Emissions From All Baltimore City Sources"
)
ANSWER 2:
# Looking at the graph on plot2.png, the total PM2.5 have not continously decreased, They decreased from 1999 to 2002,
# but have increased in 2005 and then decreased.
