Question 3:
# Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, 
# which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? 
# Which have seen increases in emissions from 1999–2008? 
# Use the ggplot2 plotting system to make a plot answer this question.

g<-ggplot(aes(x = year, y = Emissions, fill=type), data=NEIdataBaltimore)
g+geom_bar(stat="identity")+
  facet_grid(.~type)+
  labs(x="year", y=expression("Total PM"[2.5]*" Emission (Tons)")) + 
  labs(title=expression("PM"[2.5]*" Emissions, Baltimore City 1999-2008 by Source Type"))+
  guides(fill=FALSE)

ANSWER 3:
## Looking at the graph on plot3.png, the “NON-ROAD”, “NONPOINT” and “ON-ROAD” type of sources have shown a decrease in the total PM2.5
# Emissions.
# “POINT” type of source, shows the increase in the total PM2.5 emissions 
# from 1999-2005 but again a decrease in 2008
