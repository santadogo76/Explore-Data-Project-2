Question 4:
## Across the United States, how have emissions from coal combustion-related sources changed from 1999-2008?

## making the names in the SCC dataframe pretty by removing \\. in all the names
names(SCC)<-gsub("\\.","", names(SCC))

## Note: The SCC levels go from generic to specific. We assume that coal combustion related SCC records are those 
# where SCC.Level.One contains the substring ‘comb’ and SCC.Level.
# Four contains the substring ‘coal’.

SCCcombustion<-grepl(pattern = "comb", SCC$SCCLevelOne, ignore.case = TRUE)
SCCCoal<-grepl(pattern = "coal", SCC$SCCLevelFour, ignore.case = TRUE)

## extracting the SCC in 
SCCCoalCombustionSCC<-SCC[SCCcombustion & SCCCoal,]$SCC
NIECoalCombustionValues<-NEIdata[NEIdata$SCC %in% SCCCoalCombustionSCC,]
NIECoalCombustionTotalEm<-aggregate(Emissions~year, NIECoalCombustionValues, sum)

## Plotting the subset of NEI data with SCC matched with coal and combustion.
g<-ggplot(aes(year, Emissions/10^5), data=NIECoalCombustionTotalEm)
g+geom_bar(stat="identity",fill="grey",width=0.75) +
  guides(fill=FALSE) +
  labs(x="year", y=expression("Total PM"[2.5]*" Emission (10^5 Tons)")) + 
  labs(title=expression("PM"[2.5]*" Coal Combustion Source Emissions Across US from 1999-2008")
 
ANSWER 4:
## Graph plot4.png shows that,Coal cumbustion is in decreasing trend with a sligh increase from 2002-2005, and then a decrease 
