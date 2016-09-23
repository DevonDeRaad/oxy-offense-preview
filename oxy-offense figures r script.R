###R-script for Oxy Weekly Football article figures
###Devon DeRaad
###September-20-2016

rush<- read.csv("~/Desktop/sciac rushing 2015.csv")
pass<- read.csv("~/Desktop/sciac 2015 passing.csv")
install.packages("ggthemes")
library(ggthemes)
###set color theme
c<- c("mediumpurple4", "red4", "goldenrod", "sienna2", "seagreen", "royalblue4", "firebrick", "darkslateblue")
###create rushing yards graph
ggplot(data=rush, aes(x=reorder(school, yds), y=yds, fill=school)) + theme_minimal(base_size=13,)+ ylab("Rushing Yards") + xlab("School")+ geom_bar(stat="identity")+ scale_fill_manual(values=c)+ theme(axis.text.x=element_text(angle=45, face="bold", hjust=1,vjust=1.5))
###create td/int 2015 figure
ggplot(data=pass, aes(x=reorder(name, -value), y=value, fill=result)) + theme_minimal(base_size=13,)+ geom_bar(aes(fill = result), position = "dodge", stat="identity")+ xlab("2015 SCIAC Quarterbacks")+ ylab("")+ theme(axis.text.x=element_text(angle=45, face="bold", hjust=1,vjust=1.35))
