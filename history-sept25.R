with(subset(pf, age<=70), cor.test(age, friend_count, method="pearson"))
ggplot(data=pf, aes(x=www_likes_recieved, y=likes_recieved)) + geom_point()
ggplot(data=pf, aes(x=www_likes_received, y=likes_received)) + geom_point()
ggplot(data=pf, aes(x=www_likes_received, y=likes_received)) + geom_point() + coord_cartesian(xlim=c(0,50000), ylim=c(0,50000))
ggplot(data=pf, aes(x=www_likes_received, y=likes_received)) + geom_point() + coord_cartesian(xlim=c(0,15000), ylim=c(0,30000))
ggplot(data=pf, aes(x=www_likes_received, y=likes_received)) + geom_point(alpha=1/20) + coord_cartesian(xlim=c(0,15000), ylim=c(0,30000))
ggplot(data=pf, aes(x=www_likes_received, y=likes_received)) + geom_point(alpha=1/10) + coord_cartesian(xlim=c(0,15000), ylim=c(0,30000))
ggplot(data=pf, aes(x=www_likes_received, y=likes_received)) + geom_point(alpha=1/10) + coord_cartesian(xlim=c(0,10000), ylim=c(0,20000))
ggsave("facebook_wwwlikes_vs_likes.jpg")
ggplot(data=pf, aes(x=www_likes_received, y=likes_received)) + geom_point(alpha=1/10) + coord_cartesian(xlim=c(0,quantile(pf$www_likes_received, 0.95)), ylim=c(0,quantile(pf$likes_receieved, 0.95)))
ggplot(data=pf, aes(x=www_likes_received, y=likes_received)) + geom_point(alpha=1/10) + coord_cartesian(xlim=c(0,quantile(pf$www_likes_received, 0.95)), ylim=c(0,quantile(pf$likes_received, 0.95)))
ggplot(data=pf, aes(x=www_likes_received, y=likes_received)) + geom_point(alpha=1/10) + coord_cartesian(xlim=c(0,quantile(pf$www_likes_received, 0.95)), ylim=c(0,quantile(pf$likes_received, 0.95))) + geom_smooth(method='lm', color='red')
ggsave("facebook_wwwlikes_vs_likes.jpg")
cor.test(pf$www_likes_received, pf$likes_received)
install.packages('alr3')
library(alr3)
dataset(Mitchell)
load(Mitchell)
data(Mitchell)
?Mitchell
head(Mitchell)
summary(Mitchell)
ggplot(data=Mitchell, aes(x=Month, y=Temp)) + geom_point()
cor.test(Mitchell$Month, Mitchell$Temp)
ggplot(data=Mictehll, aes(x=Month, y=Temp)) + geom_point() + geom_smooth(method='lm', color='red')
ggplot(data=Mitchell, aes(x=Month, y=Temp)) + geom_point() + geom_smooth(method='lm', color='red')
ggplot(aes(x=Month, y=Temp), data=Mitchell) + geom_point(color='orange') + geom_line(stat='summary', fun.y=mean) + geom_line(stat='summary', fun.y=quantile, probs=0.1, linetype=2, color='blue') + geom_line(stat='summary', fun.y=quantile, probs=0.5, color='green') + geom_line(stat='summary', fun.y=quantile, probs=0.9, linetype=2, color='red')
ggplot(aes(x=Month, y=Temp), data=Mitchell) + geom_point(color='orange') + geom_point(stat='summary', fun.y=mean) + geom_point(stat='summary', fun.y=quantile, probs=0.1, linetype=2, color='blue') + geom_point(stat='summary', fun.y=quantile, probs=0.5, color='green') + geom_point(stat='summary', fun.y=quantile, probs=0.9, linetype=2, color='red')
ggplot(data=Mictehll, aes(x=Month, y=Temp)) + geom_point() + geom_smooth(method='lm', color='red')
ggplot(data=Mitchell, aes(x=Month, y=Temp)) + geom_point() + geom_smooth(method='lm', color='red')
cor.test(Mitchell$Month, Mitchell$Temp)
ggplot(data=Mitchell, aes(x=Month/12, y=Temp)) + geom_point() + geom_smooth(method='lm', color='red')
ggplot(data=Mitchell, aes(x=Month, y=Temp)) + geom_point() + scale_x_discrete(breaks = seq(1,12,1)) + geom_smooth(method='lm', color='red')
ggplot(data=Mitchell, aes(x=Month, y=Temp)) + geom_point() + scale_x_discrete(breaks = seq(1,240,12)) + geom_smooth(method='lm', color='red')
ggplot(data=Mitchell, aes(x=Month, y=Temp)) + geom_point() + scale_x_discrete(breaks = seq(1,240,12)) + geom_smooth(method='lm', color='red')
summary(Mitchell)
ggplot(data=Mitchell, aes(x=Month, y=Temp)) + geom_point() + scale_x_discrete(breaks = seq(0,203,12)) + geom_smooth(method='lm', color='red')
summary(pf)
pf$age_with_months <- pf$age + (1 - pf$dob_month/12)
head(pf$age_with_months)
head(pf)
pf.fc_by_age_months <- pf %>% group_by(age_with_months) %>% summarise(friend_count_mean = mean(friend_count), friend_count_median = median(friend_count), n=n())
head(pf)
head(pf.fc_by_age_months)
tail(pf.fc_by_age_months)
ggplot(data=subset(pf.fc_by_age_months, age < 71), aes(x=age_with_months, y=friend_count_mean)) + geom_line()
ggplot(data=subset(pf.fc_by_age_months, age_with_months < 71), aes(x=age_with_months, y=friend_count_mean)) + geom_line()
ggsave("facebook_friendcount_mean_vs_age_with_months.jpg")
p2 <- ggplot(data=subset(pf.fc_by_age_months, age_with_months < 71), aes(x=age_with_months, y=friend_count_mean)) + geom_line()
p1 <- ggplot(data=subset(pf, age < 71), aes(x=age, y=friend_count_mean)) + geom_line()
library(gridExtra)
grid.arrange(p2,p1, ncol=1)
p1 <- ggplot(data=subset(pf.fc_by_age, age < 71), aes(x=age, y=friend_count_mean)) + geom_line()
grid.arrange(p2,p1, ncol=1)
ggsave("facebook_friendcount_mean_vs_age_months_side_by_side.jpg")
p0 <- ggplot(data=subset(pf, age <71), aes(x=round(age/5)*5, y=friend_count) + geom_line(stat='summary', fun.y=mean)
)
p0 <- ggplot(data=subset(pf, age <71), aes(x=round(age/5)*5, y=friend_count)) + geom_line(stat='summary', fun.y=mean)
grid.arrange(p2,p1, p0, ncol=1)
ggsave("facebook_friendcount_mean_vs_age_months_side_by_side.jpg")
p2 <- p2 + geom_smooth()
p1 <- p1 + geom_smooth()
grid.arrange(p2,p1, p0, ncol=1)
ggsave("facebook_friendcount_mean_vs_age_months_side_by_side.jpg")
?diamonds
?Diamonds
dir()
df <- read.delim('diamondsbig.csv')
summary(df)
em(df)
rm(df)
data(diamonds)
library(ggplot2)
data(diamonds)
data(diamonds)
data(?)
?data
data()
data(package=ggplot2)
data(package = .packages(all.available = TRUE))
?ggplot2
?ggplot
library(ggplot)
library(ggplot2)
library('ggplot2')
?ggplot
install.packages("ggplot2")
library(ggplot2)
data(diamonds)
head(pf)
ggplot(data=subset(pf.fc_by_age_months, age < 71), aes(x=age_with_months, y=friend_count_mean)) + geom_line()
install.packages("ggplot2")
ggplot(data=subset(pf.fc_by_age_months, age < 71), aes(x=age_with_months, y=friend_count_mean)) + geom_line()
library(ggplot2)
ggplot(data=subset(pf.fc_by_age_months, age < 71), aes(x=age_with_months, y=friend_count_mean)) + geom_line()
ggplot(data=subset(pf.fc_by_age_months, age_with_months < 71), aes(x=age_with_months, y=friend_count_mean)) + geom_line()
data(diamonds)
?diamonds
summary(diamonds)
ggplot(data=diamonds, aes(y=price, x=x)) + geom_point()
ggplot(data=diamonds, aes(y=price, x=x)) + geom_point(alphs=1/20)+ xlim(3,9)
ggplot(data=diamonds, aes(y=price, x=x)) + geom_point(alpha=1/20)+ xlim(3,9)
ggplot(data=diamonds, aes(y=price, x=x)) + geom_jitter(alpha=1/20)+ xlim(3,9)
ggsave("diamonds_price_vs_x.jpg")
ggplot(data=diamonds, aes(y=price, x=x)) + geom_jitter(alpha=1/20)+ xlim(3,9) + coord_trans(y="sqrt")
ggplot(data=diamonds, aes(y=price, x=y)) + geom_point()
ggplot(data=diamonds, aes(y=price, x=y)) + geom_point() + xlim(0,10)
ggplot(data=diamonds, aes(y=price, x=z)) + geom_point()
ggplot(data=diamonds, aes(y=price, x=z)) + geom_point() + xlim(0,6)
cor.test(diamonds$price, diamonds$x)
cor.test(diamonds$price, diamonds$y)
cor.test(diamonds$price, diamonds$z)
ggplot(data=diamonds, aes(y=price, x=depth)) + geom_point()
ggplot(data=diamonds, aes(y=price, x=depth)) + geom_jitter(alpha=1/20) + xlim(55,67)
ggsave("diamonds_price_vs_depth.jpg")
ggplot(data=diamonds, aes(y=price, x=depth)) + geom_point(alpha=1/100) + scale_x_continuous(breaks=2)
ggplot(data=diamonds, aes(y=price, x=depth)) + geom_point(alpha=1/100) + scale_x_continuous(breaks=seq(50,70,2))
corr.test(diamonds$price, diamonds$depth)
cor.test(diamonds$price, diamonds$depth)
cor.test(diamonds$depth, diamonds$price)
ggplot(data=diamonds, aes(y=price, x=carat)) + geom_point()
ggplot(data=diamonds, aes(y=price, x=carat)) + geom_point() + cartesian_coord(ylim=c(0,max(diamonds$price)*0.99), xlim=c(0,max(diamonds$price)*0.99))
ggplot(data=diamonds, aes(y=price, x=carat)) + geom_point() + coord_cartesian(ylim=c(0,max(diamonds$price)*0.99), xlim=c(0,max(diamonds$price)*0.99))
ggplot(data=diamonds, aes(y=price, x=carat)) + geom_point() + coord_cartesian(ylim=c(0,max(diamonds$price)*0.99), xlim=c(0,max(diamonds$carat)*0.99))
diamonds$volume < diamonds$x * diamonds$y * diamonds$z
head(diamonds)
diamonds$volume <- diamonds$x * diamonds$y * diamonds$z
head(diamonds)
ggplot(data=diamonds, aes(y=price, x=volume)) + geom_point()
cor.test(diamonds$volume, diamonds$price)
ggplot(data=diamonds, aes(y=price, x=volume)) + geom_point() + xlim(0,500)
ggplot(data=diamonds, aes(y=price, x=volume)) + geom_point()
length(diamonds$volume == 0)
str (diamonds)
diamonds[diamonds$volume == 0,]
length(diamonds[diamonds$volume == 0,])
df <-  diamonds[diamonds$volume > 0 & diamonds$volume < 800,]
head(df)
cor.test(df$price, df$volume)
ggplot(data=df, aes(y=price, x=volume)) + geom_point()
ggplot(data=df, aes(y=price, x=volume)) + geom_point(alpha=1/100)
ggplot(data=df, aes(y=price, x=volume)) + geom_point(alpha=1/50)
ggplot(data=df, aes(y=price, x=volume)) + geom_point(alpha=1/10)
ggplot(data=df, aes(y=price, x=volume)) + geom_point(alpha=1/20)
ggplot(data=df, aes(y=price, x=volume)) + geom_point(alpha=1/30)
ggplot(data=df, aes(y=price, x=volume)) + geom_point(alpha=1/40)
ggplot(data=df, aes(y=price, x=volume)) + geom_point(alpha=1/40) + geom_smooth(method='lm', color='red')
ggplot(data=df, aes(y=price, x=volume)) + geom_point(alpha=1/40)
ggplot(data=df, aes(y=price, x=volume)) + geom_point(alpha=1/20)
ggplot(data=df, aes(y=price, x=volume)) + geom_point(alpha=1/20) + geom_smooth(method='lm', color='red')
ggsave("diamonds_price_vs_volume_lm.jpg")
diamondsByClarity <- diamonds %>% group_by(clarity)
library(dplyr)
?dplyr
install.packages("dplyr")
diamondsByClarity <- diamonds %>% group_by(clarity) %>%
summarise(mean_price = mean(price), median_price = median(price), min_price = min(price), max_price = max(price), n=n())
load(dplyr)
load(dplyr2)
library(dplyr)
diamondsByClarity <- diamonds %>% group_by(clarity) %>%
summarise(mean_price = mean(price), median_price = median(price), min_price = min(price), max_price = max(price), n=n())
head(diamondsByClarity)
suppressMessages(library(dplyr))
summarise(mean_price = mean(price), median_price = median(price), min_price = min(price), max_price = max(price), n=n())
diamondsByClarity <- diamonds %>% group_by(clarity) %>%
summarise(mean_price = mean(price), median_price = median(price), min_price = min(price), max_price = max(price), n=n())
str(diamonds)
summary(diamonds$price)
diamondsByClarity <- diamonds %>% group_by(clarity) %>%
summarise(mean_price = mean(price), median_price = median(price), min_price = min(price), max_price = max(price), n=n())
diamondsByClarity <- diamonds %>% group_by(clarity) %>%
summarise(mean_price = as.integer(mean(price)), median_price = median(price), min_price = min(price), max_price = max(price), n=n())
diamondsByClarity <- diamonds %>% group_by(clarity) %>%
summarise(mean_price = mean(price) * 1.0, median_price = median(price) * 1.0, min_price = min(price), max_price = max(price), n=n())
head(diamondsByClarity)
diamonds_by_clarity <- group_by(diamonds, clarity)
diamonds_mp_by_clarity <- summarise(diamonds_by_clarity, mean_price = mean(price))
diamonds_by_color <- group_by(diamonds, color)
diamonds_mp_by_color <- summarise(diamonds_by_color, mean_price = mean(price))
head(diamonds_mp_by_clarity)
head(diamonds_mp_by_color)
ggplot(data=diamonds_mp_by_clarity, aes(y=mean_price, x=color)) + gg_bar()
ggplot(data=diamonds_mp_by_clarity, aes(y=mean_price, x=color)) + geom_bar()
ggplot(data=diamonds_mp_by_clarity, aes(y=mean_price, x=clarity)) + geom_bar()
ggplot(data=diamonds_mp_by_clarity, aes(y=mean_price, x=clarity)) + geom_bar(stat="identity")
ggplot(data=diamonds_mp_by_clarity, aes(y=mean_price, x=clarity)) + geom_bar(stat="identity", color='green')
ggplot(data=diamonds_mp_by_clarity, aes(y=mean_price, x=clarity)) + geom_bar(stat="identity", fill='green')
ggplot(data=diamonds_mp_by_clarity, aes(y=mean_price, x=clarity)) + geom_bar(stat="identity", fill='cyan')
ggplot(data=diamonds_mp_by_clarity, aes(y=mean_price, x=clarity)) + geom_bar(stat="identity", fill='blue')
p1 <- ggplot(data=diamonds_mp_by_clarity, aes(y=mean_price, x=clarity)) + geom_bar(stat="identity", fill='blue')
p2 <- ggplot(data=diamonds_mp_by_color, aes(y=mean_price, x=color)) + geom_bar(stat="identity", fill='red')
grid.arrange(p1, p2, ncol=1)
library(gridExtra)
install.package("gridExtra")
install.packages("gridExtra")
library(gridExtra)
grid.arrange(p1, p2, ncol=1)
ggsave("daimonds_mean_price_by_clarity_color.jpg")
diamonds_by_clarity <- group_by(diamonds, clarity)
diamonds_mp_by_clarity <- summarise(diamonds_by_clarity, mean_price = mean(price))
diamonds_by_cut <- group_by(diamonds, cut)
diamonds_mp_by_cut <- summarise(diamonds_by_cut, mean_price = mean(price))
ggplot(data=diamonds_mp_by_cut, aes(y=mean_price, x=cut)) + geom_bar(stat="identity", fill='blue')
ggsave("diamonds_mean_price_by_cut.jpg")
dfcell <- read.csv('cell_phone_total.csv', header = T, row.names = 1, check.names = F)
df2 <- subset(dfcell, rowSums(dfcell, na.rm=T) > 0, colSums(dfcell, na.rm=T) > 0)
df2['country'] = row.names(df2)
dim(df2)
library(tidyr)
install.packages("tidyr")
library(tidyr)
df3 <- gather(df2, "year", "CellPhoneTotal", -country)
head(df3)
ggplot(data=df3, aes(y=CellPhoneTotal, x=year)) + geom_point()
ggplot(data=df3, aes(y=CellPhoneTotal, x=year)) + geom_point()+ coord_cartesian(xlim=c(1990,2011))
ggplot(data=df3, aes(y=CellPhoneTotal, x=year)) + geom_point()
ggplot(data=df3, aes(y=CellPhoneTotal, x=year)) + geom_point()+ xlim(1990,2011)
ggplot(data=df3, aes(y=CellPhoneTotal, x=year)) + geom_point()
str(df3)
df3$year_i <- as.integer(df3$year)
head(df3)
df3$year_i <- as.character(df3$year)
head(df3)
df3$year_i <- as.integer(df3$year_i)
head(df3)
ggplot(data=df3, aes(y=CellPhoneTotal, x=year_i)) + geom_point()
ggplot(data=df3, aes(y=CellPhoneTotal, x=year)) + geom_point()+ xlim(1990,2011)
ggplot(data=df3, aes(y=CellPhoneTotal, x=year_i)) + geom_point()+ xlim(1990,2011)
head(df2)
ggplot(data=df3, aes(y=CellPhoneTotal, x=year_i)) + geom_point()+ xlim(1990,2011)
ggplot(data=df3, aes(y=CellPhoneTotal, x=year_i)) + geom_point(alpha=1/10)+ xlim(1990,2011)
ggplot(data=df3, aes(y=CellPhoneTotal, x=year_i)) + geom_point()+ xlim(1990,2011)
ggplot(data=df3, aes(y=CellPhoneTotal, x=year_i)) + geom_line()+ xlim(1990,2011)
ggplot(data=df3, aes(y=CellPhoneTotal, x=year)) + geom_bar(stat="identity")+ xlim(1990,2011)
ggplot(data=df3, aes(y=CellPhoneTotal, x=year)) + geom_bar(stat="identity")
qplot(data=df3, y=CellPhoneTotal, x=year) + geom_bar(stat="identity") +
coord_cartesian(xlim=c(1990,2011))
df3$year <- as.integer(as.character(df3$year))
qplot(data=df3, y=CellPhoneTotal, x=year) + geom_bar(stat="identity") +
coord_cartesian(xlim=c(1990,2011))
ggsave("cellphonetotal_by_year.jpg")
qplot(data=df3, y=CellPhoneTotal, x=year) + geom_point() +
coord_cartesian(xlim=c(1990,2011)) + geom_smooth(method="lm", color='red')
qplot(data=df3, y=CellPhoneTotal, x=year) + geom_point() +
coord_cartesian(xlim=c(1990,2011)) + geom_smooth(method="loess", color='red')
corr.test(df3$CellPhoneTotal, df3$year)
cor.test(df3$CellPhoneTotal, df3$year)
ggplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")),
aes(y=CellPhoneTotal, x=year, fill=country) + geom_bar(stat="identity") +
coord_cartesian(xlim=c(1990,2011))
)
ggplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")),
aes(y=CellPhoneTotal, x=year, fill=country)) + geom_bar(stat="identity") +
coord_cartesian(xlim=c(1990,2011))
ggsave("cellphonetotal_by_country.jpg")
ggplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")),
aes(y=CellPhoneTotal, x=year, colour=country)) + geom_line(stat="identity") +
coord_cartesian(xlim=c(1990,2011))
ggsave("cellphone_total_bycountry_line.jpg")
ggplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")),
aes(y=CellPhoneTotal, x=year)) + geom_bar(stat="identity") +
coord_cartesian(xlim=c(1990,2011)) + facet_wrap(~country, scales="free_y")
ggsave("cellphonetotal_by_country_side_by_side.jpg")
ggplot(data=df3, aes(y=CellPhoneTotal, x=year)) + geom_bar(stat="identity") +
coord_cartesian(xlim=c(1990,2011))
ggsave("cellphonetotal_by_year.jpg")
pf.fc_by_age_gender <- pf %>% group_by( age, gender ) %>%
summarise( mean_friend_count = mean(friend_count),
median_friend_count = median(as.numeric(friend_count)),
n = n() )
head(pf.fc_by_age_gender)
ggplot(data=pf.fc_by_age_gender, aes(y=median_friend_count, x=age)) + geom_line(aes(color=gender))
install.packages('reshape2')
install.packages("reshape2")
install.packages("reshape2")
install.packages("reshape2")
install.packages("reshape2")
install.packages("reshape2")
install.packages("reshape2")
install.packages("reshape2")
install.packages("reshape2")
install.packages("reshape2")
library(reshape2)
library(reshape2)
install.packages('reshape2')
install.packages("reshape2")
install.packages("reshape2")
remove.packages('reshape2')
library(reshape2)
install.packages('reshape2')
library(reshape2)
pf.fc_by_age_gender.wide <- dcats(pf.fc_by_age_gender, age~gender, value.var='median_friend_count')
pf.fc_by_age_gender.wide <- dcast(pf.fc_by_age_gender, age~gender, value.var='median_friend_count')
head(pf.fc_by_age_gender.wide)
pf.fc_by_age_gender.wide <- pf.fc_by_age_gender.wide[,1:3]
head(pf.fc_by_age_gender.wide)
ggplot
library(ggplot2)
View(pf.fc_by_age_gender.wide)
ggplot(data=pf.fc_by_age_gender.wide, aes=(x=age)) +
geom_line(aes(y=female, colour = "female")) + geom_line(aes(y=male, colour="male"))
ggplot(data=pf.fc_by_age_gender.wide, aes(x=age)) + geom_line(aes(y=female, colour="female")) + geom_line(aes(y=male, colour="male"))
ggplot(data=pf.fc_by_age_gender.wide, aes(x=age)) + geom_line(aes(y=female, colour="female")) + geom_line(aes(y=male, colour="male")) + geom_hline(aes(yintercept=1, linetype=2))
ggplot(data=pf.fc_by_age_gender.wide, aes(x=age)) + geom_line(aes(y=female, colour="female")) + geom_line(aes(y=male, colour="male")) + geom_hline(aes(yintercept=1))
ggplot(data=pf.fc_by_age_gender.wide, aes(x=age)) + geom_line(aes(y=female, colour="female")) + geom_line(aes(y=male, colour="male")) + geom_hline(aes(yintercept=1), linetype=2)
pwd()
dir()
getwd()
savehistory("~/GitHub/EDA/history_aug14.R")
getwd()
dir(*.rmd)
dir()
dir("*.rmd")
?dir
dir(.,"*.rmd")
dir(path=".",pattern="*.rmd")
wine <- read.csv("./wineQualityWhites.csv")
summary(wine)
library(psych)
describe(wine)
?describe
describe(wine, skew=F)
describe(wine, skew=F)
describe(wine, skew=F, check=T)
describe(wine)
describe(wine[2:12], skew=F)
cor(wine[,-12])
cor(wine[,-12], method="spearman")
pairs(WhiteWine[,-12], gap=0, pch=19, cex=0.4, col="darkblue")
pairs(wine[,-12], gap=0, pch=19, cex=0.4, col="darkblue")
title(sub="Scatterplot of Chemical Attributes", cex=0.8)
+++
?cor
describeBy(wine, group=quality)
describeBy(wine, group=wine$quality)
?stats
statsBy(wine)
statsBy(wine, group=wine$quality)
pairs.panel(wine)
pairs.panels(wine)
lowerCor(wine)
?lowerCor
lowerMat(cor(wine))
tabelF(wine)
tableF(wine)
cor(wine)
cor(wine, digits=2)
?cor
lowerMat(cor(wine))
lowerCor(wine)
savehistory("~/GitHub/EDA/History-sep24.R")
summary(wine)
describe(wine[2:12], skew=F)
lowerCor(wine)
pairs.panels(wine)
library(psych)
wine <- read.csv("./wineQualityWhites.csv")
summary(wine)
describe(wine[2:12], skew=F)
lowerCor(wine)
pairs.panels(wine)
?cor
names(which.max(table(wine$quality)))
table(wine$quality)
summary(wine$quality)
table(wine$quality)
iqr(wine$quality)
IQR(wine$quality)
sum(wine$quality < 3.5)
sum(reds$quality > 7.5)
sum(wine$quality > 7.5)
200/4998
200/4898
?IQR
ggplot(wine, aes(x=quality)) + geom_box()
library(ggplot)
library(ggplot2)
ggplot(wine, aes(x=quality)) + geom_box()
ggplot(wine, aes(x=quality)) + geom_boxplot()
ggplot(wine, aes(x=factor(wine$quality), y=quality) + geom_boxplot()
ggplot(wine, aes(x=factor(wine$quality), y=quality)) + geom_boxplot()
ggplot(data=wine, aes(x=quality)) +
geom_bar(binwidth=1, color='black', fill='green') +
coord_cartesian(xlim=c(0,10)) +
geom_vline(xintercept = median(wine$quality), linetype='longdash', color='red',alpha=.25)+
geom_vline(xintercept = quantile(wine$quality, 0.25), linetype='dash', alpha=.25) +
geom_vline(xintercept = quantile(wine$quality, 0.75), linetype='dash', alpha=.25) +
geom_vline(xintercept = mean(wine$quality), linetype='longdash', color='blue', alpha=.25)
ggplot(data=wine, aes(x=quality)) +
geom_bar(binwidth=1, color='black', fill='green') +
coord_cartesian(xlim=c(0,10)) +
geom_vline(xintercept = median(wine$quality), linetype='longdash', color='red',alpha=.25)+
geom_vline(xintercept = quantile(wine$quality, 0.25), linetype='dashed', alpha=.25) +
geom_vline(xintercept = quantile(wine$quality, 0.75), linetype='dashed', alpha=.25) +
geom_vline(xintercept = mean(wine$quality), linetype='longdash', color='blue', alpha=.25)
ggplot(data=wine, aes(x=quality)) +
geom_bar(binwidth=1, color='black', fill='green') +
coord_cartesian(xlim=c(0,10)) +
geom_vline(xintercept = median(wine$quality), linetype='longdash', color='red',alpha=.75)+
geom_vline(xintercept = quantile(wine$quality, 0.25), linetype='dashed', alpha=.75) +
geom_vline(xintercept = quantile(wine$quality, 0.75), linetype='dashed', alpha=.75) +
geom_vline(xintercept = mean(wine$quality), linetype='longdash', color='blue', alpha=.75)
ggplot(data=wine, aes(x=quality)) +
geom_bar(binwidth=1, color='black', fill='green') +
coord_cartesian(xlim=c(0,10,1)) +
geom_vline(xintercept = median(wine$quality), linetype='longdash', color='red',alpha=.75)+
geom_vline(xintercept = mean(wine$quality), linetype='longdash', color='blue', alpha=.75)+
geom_vline(xintercept = quantile(wine$quality, 0.25), linetype='dashed', alpha=.75) +
geom_vline(xintercept = quantile(wine$quality, 0.75), linetype='dashed', alpha=.75)
ggplot(data=wine, aes(x=quality)) +
geom_bar(binwidth=1, color='black', fill='green') +
coord_cartesian(xlim=c(0,10)) +
geom_vline(aes(xintercept = quality.mean), linetype='longdash', color='red',alpha=.75)+
geom_vline(xintercept = mean(wine$quality), linetype='longdash', color='blue', alpha=.75)+
geom_vline(xintercept = quantile(wine$quality, 0.25), linetype='dashed', alpha=.75) +
geom_vline(xintercept = quantile(wine$quality, 0.75), linetype='dashed', alpha=.75)
ggplot(data=wine, aes(x=quality)) +
geom_bar(binwidth=1, color='black', fill='green') +
coord_cartesian(xlim=c(0,10)) +
geom_vline(aes(xintercept = wine$quality.mean), linetype='longdash', color='red',alpha=.75)+
geom_vline(xintercept = mean(wine$quality), linetype='longdash', color='blue', alpha=.75)+
geom_vline(xintercept = quantile(wine$quality, 0.25), linetype='dashed', alpha=.75) +
geom_vline(xintercept = quantile(wine$quality, 0.75), linetype='dashed', alpha=.75)
ggplot(data=wine, aes(x=quality)) +
geom_bar(binwidth=1, color='black', fill='green') +
coord_cartesian(xlim=c(0,10)) +
geom_vline(aes(xintercept = wine$quality.mean), linetype='longdash', color='red',alpha=.75)+
geom_vline(aes(xintercept = wine$quality.median), linetype='longdash', color='blue', alpha=.75)+
geom_vline(xintercept = quantile(wine$quality, 0.25), linetype='dashed', alpha=.75) +
geom_vline(xintercept = quantile(wine$quality, 0.75), linetype='dashed', alpha=.75)
ggplot(data=wine, aes(x=quality)) +
geom_bar(binwidth=1, color='black', fill='green') +
coord_cartesian(xlim=c(0,10)) +
geom_vline(aes(xintercept = mean(wine$quality), linetype='longdash', color='red',alpha=.75)+
geom_vline(aes(xintercept = median(wine$quality), linetype='longdash', color='blue', alpha=.75)+
geom_vline(aes(xintercept = quantile(wine$quality, 0.25)), linetype='dashed', alpha=.75) +
geom_vline(aes(xintercept = quantile(wine$quality, 0.75)), linetype='dashed', alpha=.75)
ggplot(data=wine, aes(x=quality)) +
geom_bar(binwidth=1, color='black', fill='green') +
coord_cartesian(xlim=c(0,10)) +
geom_vline(aes(xintercept = mean(wine$quality), linetype='longdash', color='red',alpha=.75)+
geom_vline(aes(xintercept = median(wine$quality), linetype='longdash', color='blue', alpha=.75)+
geom_vline(aes(xintercept = quantile(wine$quality, 0.25)), linetype='dashed', alpha=.75) +
geom_vline(aes(xintercept = quantile(wine$quality, 0.75)), linetype='dashed', alpha=.75)
ggplot(data=wine, aes(x=quality)) +
geom_bar(binwidth=1, color='black', fill='green') +
coord_cartesian(xlim=c(0,10)) +
geom_vline(aes(xintercept = mean(wine$quality)), linetype='longdash', color='red',alpha=.75)+
geom_vline(aes(xintercept = median(wine$quality)), linetype='longdash', color='blue', alpha=.75)+
geom_vline(aes(xintercept = quantile(wine$quality, 0.25)), linetype='dashed', alpha=.75) +
geom_vline(aes(xintercept = quantile(wine$quality, 0.75)), linetype='dashed', alpha=.75)
ggplot(data=wine, aes(x=factor(wine$quality)) +
geom_bar(binwidth=1, color='black', fill='green') +
geom_vline(xintercept = mean(wine$quality), linetype= 'longdash', color='red, alpha=.75)+
geom_vline(xintercept = median(wine$quality), linetype='longdash', color='blue', alpha=.75)+
geom_vline(xintercept = quantile(wine$quality, 0.25), linetype='dashed', alpha=.75) +
geom_vline(xintercept = quantile(wine$quality, 0.75), linetype='dashed', alpha=.75)
ggplot(data=wine, aes(x=factor(wine$quality))) +
geom_bar(binwidth=1, color='black', fill='green') +
geom_vline(xintercept = mean(wine$quality), linetype= 'longdash', color='red, alpha=.75)+
geom_vline(xintercept = median(wine$quality), linetype='longdash', color='blue', alpha=.75)+
geom_vline(xintercept = quantile(wine$quality, 0.25), linetype='dashed', alpha=.75) +
geom_vline(xintercept = quantile(wine$quality, 0.75), linetype='dashed', alpha=.75)
ggplot(data=wine, aes(x=factor(wine$quality))) +
geom_bar(binwidth=1, color='black', fill='green') +
geom_vline(xintercept = mean(wine$quality), linetype= 'longdash', color='red, alpha=.75)
ggplot(data=wine, aes(x=factor(wine$quality))) +
geom_bar(binwidth=1, color='black', fill='green') +
geom_vline(xintercept = mean(wine$quality), linetype= 'longdash', color='red, alpha=.75) +
geom_vline(xintercept = median(wine$quality), linetype='longdash', color='blue', alpha=.75)
ggplot(data=wine, aes(x=factor(wine$quality))) +
geom_bar(binwidth=1, color='black', fill='green') +
geom_vline(xintercept = mean(wine$quality), linetype= 'longdash', color='red', alpha=.75)+
geom_vline(xintercept = median(wine$quality), linetype='longdash', color='blue', alpha=.75) +
geom_vline(xintercept = quantile(wine$quality, 0.25), linetype='dashed', alpha=.75) +
geom_vline(xintercept = quantile(wine$quality, 0.75), linetype='dashed', alpha=.75)
ggplot(data=wine, aes(x=wine$quality)) +
geom_bar(binwidth=1, color='black', fill='green') +
geom_vline(xintercept = mean(wine$quality), linetype= 'longdash', color='red', alpha=.75)+
geom_vline(xintercept = median(wine$quality), linetype='longdash', color='blue', alpha=.75) +
geom_vline(xintercept = quantile(wine$quality, 0.25), linetype='dashed', alpha=.75) +
geom_vline(xintercept = quantile(wine$quality, 0.75), linetype='dashed', alpha=.75)
ggplot(data=wine, aes(x=wine$quality)) +
geom_bar(binwidth=1, color='black', fill='green') +
geom_vline(xintercept = mean(wine$quality), linetype= 'longdash', color='red', alpha=.75)+
geom_vline(xintercept = median(wine$quality), linetype='longdash', color='blue', alpha=.75) +
geom_vline(xintercept = quantile(wine$quality, 0.25) - 1.5 * IQR(wine$quality), linetype='dashed', alpha=.75) +
geom_vline(xintercept = quantile(wine$quality, 0.75) + 1.5* IQR(wine$quality), linetype='dashed', alpha=.75)
ggplot(data=wine, aes(x=wine$quality)) + geom_bar(binwidth=1, color='black', fill='green') +
geom_vline(xintercept = mean(wine$quality), linetype= 'longdash', color='red', alpha=.5)+
geom_vline(xintercept = median(wine$quality), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(wine$quality, 0.25) - 1.5 * IQR(wine$quality),
linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(wine$quality, 0.75) + 1.5 * IQR(wine$quality),
linetype='dashed', alpha=.5)
ggsave("wine_quality_historgram.jpg")
ggplot(data=wine, aes(x=quality)) + geom_bar(binwidth=1, color='black', fill='green') +
geom_vline(xintercept = mean(quality), linetype= 'longdash', color='red', alpha=.5)+
geom_vline(xintercept = median(wine$quality), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(wine$quality, 0.25) - 1.5 * IQR(wine$quality),
linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(wine$quality, 0.75) + 1.5 * IQR(wine$quality),
linetype='dashed', alpha=.5)
ggplot(data=wine, aes(x=quality)) + geom_bar(binwidth=1, color='black', fill='green') +
geom_vline(xintercept = mean(wine$quality), linetype= 'longdash', color='red', alpha=.5)+
geom_vline(xintercept = median(wine$quality), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(wine$quality, 0.25) - 1.5 * IQR(wine$quality),
linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(wine$quality, 0.75) + 1.5 * IQR(wine$quality),
linetype='dashed', alpha=.5)
savehistory("~/GitHub/EDA/history-sept25.R")
