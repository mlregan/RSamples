res <- prop.test(x = c(12632, 10437), n = c(26320537, 21002553), p = NULL, alternative = "two.sided", correct = TRUE)
print(res)
res$p.value
res$estimate
res$conf.int
