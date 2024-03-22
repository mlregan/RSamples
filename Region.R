attach(Region_Rank1)

install.packages("tidyverse")

library(tidyverse)

infection_by_region2 <- Region_Rank1 %>%
  group_by(Region) 

ggplot(infection_by_region2, aes(x = Region, y = ProportionOfHospitalsWorse)) + geom_col() + ggtitle("Proportion (%) of Hospitals by Region Ranked Worse than the U.S National Benchmark for Hospital-Associated Infection")

region_of_care_col<-c('Midwest', 'Northeast', 'South', 'West')
Count_names<-c('Count of Worse Ranking', 'Count of Not Worse Ranking')
CountOfWorseRanking_col<-c(125, 170, 236, 162)
CountOfNotWorseRanking_col<-c(1253, 417, 1511, 756)
Health_Outcome_Data<-data.frame(CountOfWorseRanking_col, CountOfNotWorseRanking_col)
rownames(Health_Outcome_Data)<-region_of_care_col
colnames(Health_Outcome_Data)<-Count_names

print(Health_Outcome_Data)

chisq.test(Health_Outcome_Data)






