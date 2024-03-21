data2 <- data.frame("categories" = c('2020 CT', '2020 Total'),
 		    "amount" = c(10437, 21002553))
attach(data2)

view(data2)

ggplot(data2, aes(x="", y=amount, fill=categories)) + geom_bar(stat="identity", width=1) + coord_polar("y", start=0) + labs(x = NULL, y = NULL, title = "2020 Number of CT-Related and Total HCPCS Codes Billed by Emergency Medicine Providers")
