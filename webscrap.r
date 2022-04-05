library(XML)
years<-c(2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021)
for (year in years){

 url=paste0("https://stats.espncricinfo.com/iplchennai/engine/records/team/match_results.html?class=6;id=",year, ";team=4343;type=year")
 matches=readHTMLTable(readLines(url)) 
  message("retrieving match data for year",year)
 df<- as.data.frame(matches$`Match results`[1:6])
 write.table(df,file="csk_19BDS057.csv", sep="," ,append = TRUE,
 col.names=ifelse(year==2008, TRUE, FALSE),row.names = FALSE)
 print("done by S Raghul 19BDS0057")
}
