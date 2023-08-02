df = read.csv('C:/Users/singh/Documents/AIT580/Final_project/incident_reports_SF_.csv')
head(df)
dim(df)
names(df)
df2<- subset(df,select=c('Incident.Date', 'Incident.Time', 'Incident.Year',
                         'Incident.Day.of.Week', 'Filed.Online', 'Incident.Category',
                         'Resolution', 'Police.District', 'Analysis.Neighborhood',
                         'Supervisor.District', 'Latitude', 'Longitude'))
dim(df2)
head(df2)
names(df2)

library(ggplot2)

summary(df2)

library(dplyr)
library(tidyr)
library(tidyverse)

day<-df2%>%
  group_by(Incident.Day.of.Week)%>%
  summarize(count=n())%>%
  arrange(desc(count))
head(day)
ggplot(day,aes(x=Incident.Day.of.Week,y=count))+
  geom_col(color='brown',fill='#756bd2')+
  geom_text(aes(label=count),vjust=-0.5)+
  ggtitle('Week Day Wise Number of Cases')+
  xlab('Day Of week')


  cops<-df2%>%
  group_by(Police.District)%>%
  summarize(count=n())%>%
  arrange(desc(count))
head(cops)

ggplot(cops,aes(x=Police.District,y=count))+
  geom_col(color='brown',fill='#756bd2')+
  geom_text(aes(label=count),vjust=-0.5)+
  ggtitle('District Wise Number of Cases')+
  xlab('District Name')



crime_t<-df2%>%
  group_by(Incident.Category)%>%
  summarize(count=n())%>%
  arrange(desc(count))
head(crime_t)
dim(crime_t2)
crime_t2<-crime_t[1:10,]
ggplot(crime_t2,aes(x=Incident.Category,y=count))+
  geom_col(color='brown',fill='#346bd2')+
  geom_text(aes(label=count),vjust=-0.5)+
  ggtitle('Most Common Crime')+
  xlab('Day Of week')+
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
