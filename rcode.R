skudata <- structure(list(sku_no = 1:50, t_actuals = c(103L, 62L, 52L, 36L, 
37L, 26L, 22L, 12L, 20L, 52L, 52L, 7L, 3L, 5L, 19L, 55L, 74L, 
8L, 1L, 51L, 17L, 18L, 21L, 27L, 114L, 15L, 5L, 12L, 21L, 19L, 
17L, 35L, 73L, 83L, 27L, 25L, 21L, 0L, 0L, 32L, 10L, 13L, 19L, 
5L, 8L, 0L, 3L, 84L, 5L, 73L), t_forecasts = c(79L, 51L, 39L, 
28L, 28L, 43L, 34L, 9L, 27L, 29L, 15L, 4L, 2L, 2L, 11L, 34L, 
31L, 18L, 11L, 39L, 22L, 13L, 24L, 15L, 126L, 5L, 8L, 9L, 18L, 
1L, 1L, 25L, 68L, 73L, 26L, 32L, 30L, 0L, 0L, 16L, 13L, 8L, 20L, 
9L, 34L, 18L, 6L, 96L, 1L, 67L), tplus1_actuals = c(78L, 43L, 
40L, 21L, 16L, 26L, 15L, 28L, 36L, 26L, 11L, 3L, 3L, 12L, 39L, 
47L, 3L, 4L, 31L, 19L, 7L, 20L, 4L, 201L, 9L, 17L, 8L, 1L, 7L, 
19L, 35L, 20L, 20L, 0L, 0L, 30L, 21L, 16L, 46L, 8L, 15L, 11L, 
0L, 14L, 170L, 42L, 22L, 70L, 52L, 10L), tplus1_forecasts = c(60L, 
43L, 27L, 26L, 21L, 22L, 12L, 21L, 43L, 38L, 8L, 6L, 7L, 10L, 
33L, 29L, 25L, 13L, 28L, 22L, 11L, 18L, 13L, 158L, 11L, 8L, 13L, 
1L, 1L, 16L, 46L, 21L, 22L, 1L, 1L, 29L, 13L, 9L, 56L, 11L, 12L, 
11L, 18L, 11L, 149L, 42L, 27L, 66L, 52L, 16L), tplus2_actuals = c(65L, 
32L, 27L, 13L, 14L, 11L, 10L, 16L, 44L, 27L, 10L, 6L, 4L, 11L, 
20L, 43L, 8L, 8L, 23L, 17L, 16L, 12L, 11L, 186L, 10L, 12L, 16L, 
0L, 0L, 21L, 72L, 15L, 21L, 0L, 0L, 16L, 6L, 3L, 36L, 14L, 6L, 
16L, 0L, 9L, 139L, 74L, 34L, 79L, 27L, 8L), tplus2_forecasts = c(70L, 
44L, 32L, 26L, 22L, 22L, 10L, 17L, 45L, 39L, 8L, 7L, 8L, 11L, 
30L, 32L, 25L, 13L, 28L, 22L, 10L, 18L, 15L, 157L, 7L, 8L, 13L, 
1L, 1L, 32L, 95L, 21L, 22L, 1L, 1L, 29L, 9L, 7L, 81L, 11L, 11L, 
41L, 18L, 10L, 78L, 84L, 54L, 134L, 43L, 16L)), class = "data.frame", row.names = c(NA, 
-50L))


library(ggplot2)
ggplot(skudata, aes(x=sku_no)) + 
  geom_line(aes(y = t_actuals), color = "darkred", size=1) + 
  geom_line(aes(y = tplus1_actuals), color="steelblue", linetype="twodash", size=1) +
  geom_line(aes(y = tplus2_actuals), color="orange", linetype=5, size=1) + 
  theme_light() + theme(legend.position="none") + ylab("") + xlab("SKU Number") + labs(title="3 Week Actuals Plot")
  
  
  ggplot(skudata, aes(x=sku_no)) + 
  geom_line(aes(y = t_forecasts), color = "darkred", size=1) + 
  geom_line(aes(y = tplus1_forecasts), color="steelblue", linetype="twodash", size=1) +
  geom_line(aes(y = tplus2_forecasts), color="orange", linetype=5, size=1) + 
  theme_light() + theme(legend.position="none") + ylab("") + xlab("SKU Number") + labs(title="3 Week Forecats Plot")
  
  
  ggplot(skudata, aes(x=sku_no)) + 
  geom_line(aes(y = t_actuals), color = "darkred", size=1) + 
  geom_line(aes(y = t_forecasts), color="darkgreen", linetype="twodash", size=1) +
  theme_light() + theme(legend.position="none") + ylab("") + xlab("SKU Number") + labs(title="Week One Actuals vs Forecats Plot")
  
  
  ggplot(skudata, aes(x=sku_no)) + 
  geom_line(aes(y = tplus1_actuals), color = "darkred", size=1) + 
  geom_line(aes(y = tplus1_forecasts), color="darkgreen", linetype="twodash", size=1) +
  theme_light() + theme(legend.position="none") + ylab("") + xlab("SKU Number") + labs(title="Week Two Actuals vs Forecats Plot")
  
  ggplot(skudata, aes(x=sku_no)) + 
  geom_line(aes(y = tplus2_actuals), color = "darkred", size=1) + 
  geom_line(aes(y = tplus2_forecasts), color="darkgreen", linetype="twodash", size=1) +
  theme_light() + theme(legend.position="none") + ylab("") + xlab("SKU Number") + labs(title="Week Three Actuals vs Forecats Plot")
  
ferror12 <- abs(skudata$t_forecasts-skudata$tplus1_forecasts)
cv12 <- (sd(ferror12)/mean(ferror12))*100;
cv12

ferror23 <- abs(skudata$tplus1_forecasts-skudata$tplus2_forecasts)
cv23 <- (sd(ferror23)/mean(ferror23))*100;
cv23

ggplot(skudata, aes(x=sku_no)) + 
  geom_line(aes(y = t_forecasts), color = "darkred", size=1) + 
  geom_line(aes(y = tplus1_forecasts), color="darkgreen", linetype="twodash", size=1) +
  theme_light() + theme(legend.position="none") + ylab("") + xlab("SKU Number") + labs(title="Week One vs Two Forecats Plot")


ggplot(skudata, aes(x=sku_no)) + 
  geom_line(aes(y = tplus1_forecasts), color = "darkred", size=1) + 
  geom_line(aes(y = tplus2_forecasts), color="darkgreen", linetype="twodash", size=1) +
  theme_light() + theme(legend.position="none") + ylab("") + xlab("SKU Number") + labs(title="Week Two vs Three Forecats Plot")
