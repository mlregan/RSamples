attach(CT_HCPCS_And_Totals_2019)
library(ggplot2)
library(tidyverse)

data <- data.frame("categories" = c('2019 CT', '2019 Total'),
		   "amount" = c(12632, 26320537))

attach(data)

view(data)

ggplot(data, aes(x="", y=amount, fill=categories)) + geom_bar(stat="identity", width=1) + coord_polar("y", start=0) + labs(x = NULL, y = NULL, title = "2019 Number of CT-Related and Total HCPCS Codes Billed by Emergency Medicine Providers")
