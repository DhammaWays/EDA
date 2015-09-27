library(ggplot2)
install(ggplot2)
install('ggplot2')
install.packages("ggplot2")
library(ggplot2)
data(diamonds)
summary(diamonds)
?diamonds
qplot(data=diamonds, x=price)
qplot(data=diamonds, x=price, binwidth=100)
qplot(data=diamonds, x=price, binwidth=500)
qplot(data=diamonds, x=price, binwidth=1000)
qplot(data=diamonds, x=price, binwidth=300)
summary(diamonds$price)
length(diamons$price < 500)
length(diamonds$price < 500)
length(diamonds$price < 250)
length(diamonds$price >= 15000)
length(subset(diamonds, price < 500))
length(subset(diamonds, price < 350))
length(subset(diamonds, price < 250
)
)
length(subset(diamonds, price >= 15000))
length(diamonds[diamonds$price < 500,])
diamonds[diamonds$price < 500,]
dim(diamonds)
dim(diamonds[diamonds$price < 500,])
length(diamonds[dianmonds$price < 500, 8])
length(diamonds[diamonds$price < 500, 8])
length(diamonds[diamonds$price < 250, 8])
length(diamonds[diamonds$price >= 15000, 8])
qplot(data=diamonds, x=price, binwidth=100, xlim=c(0, 1000))
qplot(data=diamonds, x=price, binwidth=100, xlim=c(300, 1000))
qplot(data=diamonds, x=price, binwidth=50, xlim=c(300, 1000))
qplot(data=diamonds, x=price, binwidth=50, xlim=c(300, 1500))
qplot(data=diamonds, x=price, binwidth=50, xlim=c(300, 1200))
qplot(data=diamonds, x=price, binwidth=50, xlim=c(300, 1200), colour="blue")
qplot(data=diamonds, x=price, binwidth=50, xlim=c(300, 1200), colour="red")
qplot(data=diamonds, x=price, binwidth=50, xlim=c(300, 1200), colour="red", fill="grey")
qplot(data=diamonds, x=price, binwidth=50, xlim=c(300, 1200), fill="blue")
qplot(data=diamonds, x=price, binwidth=50, xlim=c(300, 1200), fill="green")
qplot(data=diamonds, x=price, binwidth=50, xlim=c(300, 1200), fill="green")
qplot(data=diamonds, x=price, binwidth=50, xlim=c(300, 1200), colour="green")
qplot(data=diamonds, x=price, binwidth=50, xlim=c(300, 1200)) + geom_histogram(colour="red")
qplot(data=diamonds, x=price, binwidth=50, xlim=c(300, 1200), colour=I("red"))
qplot(data=diamonds, x=price, binwidth=50, xlim=c(300, 1200), colour=I("red")) + scale_x_continuous(break=c(300,1200,50))
qplot(data=diamonds, x=price, binwidth=50, xlim=c(300, 1200), colour=I("red")) + scale_x_continuous(breaks=c(300,1200,50))
qplot(data=diamonds, x=price, binwidth=50, colour=I("red")) + scale_x_continuous(lim=c(300,1200), breaks=c(300,1200,50))
qplot(data=diamonds, x=price, binwidth=50, xlim=c(300, 1200), colour=I("red"))
ggsave('priceHistogram.jpg')
qplot(data=diamonds, x=price, color=cut)
qplot(data=diamonds, x=price) + facet_grid(. ~ cut)
by(diamonds, price, cut, summary)
by(diamonds$price, cut, summary)
?by
by(diamonds, cut, summary)
by(diamonds, diamonds$price, diamonds$cut, summary
)
by(diamonds, diamonds$price, diamonds$cut, summary)
by(diamonds, diamonds$cut, summary)
by(diamonds[,c(2,7)], diamonds$cut, summary)
by(diamonds$price, diamonds$cut, summary)
summary(diamonds$price)
by(diamonds$price, diamonds$cut, max)
by(diamonds$price, diamonds$cut, max, digits=max(getOption('digits')))
digits
max(getOption('digits'))
qplot(x = price, data = diamonds) + facet_wrap(~cut)
?facet_wrap
qplot(x = price, data = diamonds) + facet_wrap(~cut, scales="free_y")
qplot(x = price, data = diamonds) + facet_wrap(~cut)
qplot(x = price, data = diamonds) + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds) + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds, binwidth=100) + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds, binwidth=50) + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds, binwidth=300) + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds, binwidth=100) + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds, binwidth=100) + x_scale_log10() + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds, binwidth=100) + x_scalelog10() + facet_wrap(~cut, scales="free_y")
?x_scale
qplot(x = price/carat, data = diamonds, binwidth=100) + scale_x_log10() + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds, binwidth=10) + scale_x_log10() + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds) + scale_x_log10() + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds, binwidth=1) + scale_x_log10() + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds, binwidth=1000) + scale_x_log10() + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds, binwidth=500) + scale_x_log10() + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds, binwidth=0.5) + scale_x_log10() + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds, binwidth=0.1) + scale_x_log10() + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds, binwidth=0.05) + scale_x_log10() + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds, binwidth=0.075) + scale_x_log10() + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds, binwidth=0.1) + scale_x_log10() + facet_wrap(~cut, scales="free_y")
qplot(x = price/carat, data = diamonds, binwidth=0.075) + scale_x_log10() + facet_wrap(~cut, scales="free_y")
qplot(data=diamonds, x=cut, y=price, geom="boxplots")
qplot(data=diamonds, x=cut, y=price, geom="boxplot")
qplot(data=diamonds, x=cut, y=price, geom="boxplot", ylim=c(200,7000))
qplot(data=diamonds, x=cut, y=price, geom="boxplot") + coord_cartesian(ylim=c(200,5000))
qplot(data=diamonds, x=cut, y=price, geom="boxplot") + coord_cartesian(ylim=c(200,6000))
qplot(data=diamonds, x=cut, y=price, geom="boxplot") + coord_cartesian(ylim=c(200,7000))
qplot(data=diamonds, x=cut, y=clarity, geom="boxplot")
qplot(data=diamonds, y=price, x=clarity, geom="boxplot")
qplot(data=diamonds, x=clarity, y=price, geom="boxplot") + coord_cartesian(ylim=c(200,7000))
qplot(data=diamonds, y=price, x=color, geom="boxplot")
qplot(data=diamonds, x=color, y=price, geom="boxplot") + coord_cartesian(ylim=c(200,7000))
qplot(data=diamonds, x=color, y=price, geom="boxplot") + coord_cartesian(ylim=c(200,8000))
by(diamonds$price, diamonds$color, summary)
by(diamonds$price, diamonds$color, iqr
)
?IQR
by(diamonds$price, diamonds$color, IQR)
?diamonds
qplot(data=diamonds, x=color, y=price/carat, geom="boxplot") + coord_cartesian(ylim=c(200,8000))
qplot(data=diamonds, x=color, y=price/carat, geom="boxplot") + coord_cartesian(ylim=c(2000,6000))
qplot(data=diamonds, x=color, y=price/carat, geom="boxplot")
qplot(data=diamonds, x=color, y=price/carat, geom="boxplot") + coord_cartesian(ylim=c(2000,6000))
by(diamonds$price/diamonds$carat, diamonds$color, IQR)
by(diamonds$price/diamonds$carat, diamonds$color, summary)
qplot(data=diamonds, x=carat, geom"freqpoly")
qplot(data=diamonds, x=carat, geom"freqpol")
qplot(data=diamonds, x=carat, geom="freqpoly")
qplot(data=diamonds, x=carat, geom="freqpoly", binwidth=0.1)
qplot(data=diamonds, x=carat, geom="freqpoly")
qplot(data=diamonds, x=carat, geom="freqpoly", binwidth=0.05)
qplot(data=diamonds, x=carat, geom="freqpoly", binwidth=0.025)
qplot(data=diamonds, x=carat, geom="freqpoly", binwidth=0.01)
summary(diamonds$carat)
qplot(data=diamonds, x=carat, geom="freqpoly", binwidth=0.01) + cartesian_coord(xlim=c(1,5))
qplot(data=diamonds, x=carat, geom="freqpoly", binwidth=0.01) + coord_cartesian(xlim=c(1,5))
qplot(data=diamonds, x=carat, geom="freqpoly", binwidth=0.01) + coord_cartesian(xlim=c(2,5))
qplot(data=diamonds, x=carat, geom="freqpoly", binwidth=0.01) + coord_cartesian(xlim=c(2,5), ylim=(0,500))
qplot(data=diamonds, x=carat, geom="freqpoly", binwidth=0.01) + coord_cartesian(xlim=c(2,5), ylim=c(0,500))
qplot(data=diamonds, x=carat, geom="freqpoly", binwidth=0.01)
by(diamonds$carat, diamonds$carat, sum)
by(diamonds$carat, diamonds$carat, length)
by(diamonds$carat, diamonds$carat, dim)
by(diamonds$carat, diamonds$carat, length)
by(diamonds$carat, diamonds$carat, length) > 2000
by(diamonds$carat, diamonds$carat, length) > 2000 == TRUE
d1 <- by(diamonds$carat, diamonds$carat, length)
dim(D1)
dim(d1)
d1
summary(d1)
d1 > 2000
d1
d1[d1>2000,]
d1[d1>2000]
dplyr::tbl_df(diamonds)
load(dplyr)
load('dplyr')
install.packages("dplyr")
install.packages("tidyr")
load(dplyr)
load('dplyr')
load('tidyr')
?load
?package
?install
?package
library(dplyr)
library('dplyr')
library()
library(plyr)
library(tidyr)
tbl(diamonds)
tbl_df(diamonds)
plyr::tbl_df(diamonds)
dplyr::tbl_df(diamonds)
?plyr
library(dplyr)
?dplyr
install.packages("dplyr")
library(dplyr)
dplyr::tbl_df(diamonds)
getwd()
?read.table
install.packages("xlsx")
?xlsx
library(xlsx)
?xlsx
df_cell <- read.xlsx('cell phone total.xlsx')
df_cell <- read.xlsx('cell phone total.xlsx',1)
names(df_cell)
summary(df_cell$X2011)
by(df_cell$X2011, df_Cell$Mobile.cellular.subscriptions..total.number, summary)
by(df_cell$X2011, df_cell$Mobile.cellular.subscriptions..total.number, summary)
qplot(data=df_cell, y=X2011, x=Mobile.cellular.subscriptions..total.number)
df1 <- subset(df_cell, df$X2011 > 100000)
?subset
df1 <- subset(df_cell, X2011 > 100000)
df1 <- subset(df_cell, X2011 > 1000000)
df[1:10,1:5]
df1[1:10,1:5]
df1[1:10,c(1,47,48)]
df1[df1$Mobile.cellular.subscriptions..total.number == "India",]
df2 <- df_cell[df_cell$Mobile.cellular.subscriptions..total.number == "India",]
qplot(data=df2, x=X2011, geom="bar")
librray(ggplot)
library(ggplot2)
library(GGally)
library(scales)
install.packages('memisc')
library(dplyr)
library(reshape2)
librray(gridExtra)
library(gridExtra)
install.packages("gridExtra")
library(gridExtra)
getwd()
setwd("github/eda")
getwd()
library(ggplot2)
library(psych)
install.packages("psych")
library(ggplot2)
library(psych)
wine <- read.csv("./wineQualityWhites.csv")
rm(df1)
rm(df2)
rm(df_cell)
rm(diamonds)
rm(d1)
ggplot(data=wine, aes(x=quality)) + geom_bar(binwidth=1, color='black', fill='green') +
geom_vline(xintercept = mean(wine$quality), linetype= 'longdash', color='red', alpha=.5)+
geom_vline(xintercept = median(wine$quality), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(wine$quality, 0.25) - 1.5 * IQR(wine$quality),
linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(wine$quality, 0.75) + 1.5 * IQR(wine$quality),
linetype='dashed', alpha=.5)
boxplot(wine, volatile.acidity)
boxplot(winr, wine$volatile.acidity)
boxplot(wine, wine$volatile.acidity)
boxplot(wine)
boxplot(wine[2:13])
?boxplot
boxplot(wine[2:5])
boxplot(wine[2:4])
describe(wine, skew=F)
?boxplot
boxplot(wine[c(3,4,6)])
boxplot(wine[c(3,4,6,9,11])
boxplot(wine[c(3,4,6,9,11)])
boxplot(wine[c(2,3,4)])
boxplot(wine[c(3,4)])
boxplot(wine$fixed.acidity)
boxplot(wine[c(2,5,10,12,13)])
?grid.arrange
?psych
cor.plot(wine)
?cor.plot
cor.plot(cor(wine))
cor.plot(lowerCor(wine))
library(gridExtra)
install.packages("gridExtra")
library(gridExtra)
librray("gridExtra")
library("gridExtra")
install.packages("gridExtra")
library("gridExtra")
library(gridExtra)
ggplot(wine,aes(x = variable,y = value)) + facet_wrap(~variable) + geom_boxplot()
ggplot(wine,aes(x = variable,y = value)) + geom_boxplot()
ggplot(wine,aes(x = variable,y = value)) + geom_boxplot() + facet_wrap(~variable)
par(mfrow=c(2,5))
for (i in 1:length(wine)) {
boxplot(wine[,i], main=names(wine[i]), type="l")
}
par(mfrow=c(2,5))
for (i in 1:length(wine)) {
boxplot(wine[i], main=names(wine[i]), type="l") }
?par
layout()
par(mfrow=c(4,4))
length(wine)
for (i in 1:length(wine)) {
+     boxplot(wine[i], main=names(wine[i]), type="l") }
par(mfrow=c(4,3))
for (i in 1:length(wine)) {
+     boxplot(wine[i], main=names(wine[i]), type="l") }
for (i in 1:length(wine)) {
boxplot(wine[i], main=names(wine[i]), type="l") }
par(mfrow=4, mfcol=4)
par(mfrow=c(3,13))
for (i in 1:length(wine)) {
boxplot(wine[i], main=names(wine[i]), type="l") }
par(mfrow=c(3,5))
for (i in 1:length(wine)) {
boxplot(wine[i], main=names(wine[i]), type="l") }
par(mfrow=c(3,4))
for (i in 2:length(wine)) {
boxplot(wine[i], main=names(wine[i]), type="l") }
for (i in 2:length(wine)) {
boxplot(wine[i]) }
for (i in 2:length(wine)) {
boxplot(wine[i], main=names(wine[i])}
for (i in 2:length(wine)) {
boxplot(wine[i], main=names(wine[i])) }
?boxplot
boxplot.matrix(wine)
bxp(summary(wine))
?bxp
for (i in 2:length(wine)) {
boxplot(wine[i], main=names(wine[i])) }
for (i in 2:length(wine)) {
boxplot(wine[i], main=names(wine[i]), type="1") }
for (i in 2:length(wine)) {
boxplot(wine[i], main=names(wine[i]), type="l") }
for (i in 2:length(wine)) {
boxplot(wine[i], main=names(wine[i])) }
tapply(reds$alcohol, reds$quality, mean)
tapply(wine$alcohol, wine$quality, mean)
ggplot(data=wine, aes(y=alcohol, x=quality)) +
geom_boxplot() +
geom_hline(show_guide=T, yintercept=mean(wine$alcohol), linetype='longdash', alpha=.5, color='red')
ggplot(data=wine, aes(y=alcohol, x=quality)) +
geom_boxplot() +
geom_hline(show_guide=T, yintercept=mean(wine$alcohol), linetype='longdash', alpha=.5, color='red') +
geom_vline(show_guide=T, xintercept=mean(wine$quality), linetype='longdash', alpha=.5, color='green')
ggplot(data=wine, aes(y=alcohol, x=as.factor(quality)) +
geom_boxplot() +
geom_hline(show_guide=T, yintercept=mean(wine$alcohol), linetype='longdash', alpha=.5, color='red') +
geom_vline(show_guide=T, xintercept=mean(wine$quality), linetype='longdash', alpha=.5, color='green')
ggplot(data=wine, aes(y=alcohol, x=as.factor(quality))) +
geom_boxplot() +
geom_hline(show_guide=T, yintercept=mean(wine$alcohol), linetype='longdash', alpha=.5, color='red') +
geom_vline(show_guide=T, xintercept=mean(wine$quality), linetype='longdash', alpha=.5, color='green')
ggplot(data=wine, aes(y=alcohol, x=as.factors(quality))) +
geom_boxplot() +
geom_hline(show_guide=T, yintercept=mean(wine$alcohol), linetype='longdash', alpha=.5, color='red') +
geom_vline(show_guide=T, xintercept=mean(wine$quality), linetype='longdash', alpha=.5, color='green')
ggplot(data=wine, aes(y=alcohol, x=factor(quality))) +
geom_boxplot() +
geom_hline(show_guide=T, yintercept=mean(wine$alcohol), linetype='longdash', alpha=.5, color='red') +
geom_vline(show_guide=T, xintercept=mean(wine$quality), linetype='longdash', alpha=.5, color='green')
boxplot(alcohol~quality, wine)
par(mfrow(1,1))
par(mfrow=c(1,1))
boxplot(alcohol~quality, wine)
ggplot(data=wine, aes(y=alcohol, x=factor(quality))) +
geom_boxplot()
ggsave("wine_alcohol_vs_quality_boxplot.jpg")
ggplot(data=wine, aes(x=quality, y=alcohol)) +
geom_jitter(alpha=1/3) +
geom_smooth(method='lm', aes(group = 1))+
geom_hline(yintercept=mean(wine$alcohol), linetype='longdash', alpha=.5, color='blue') +
geom_vline(xintercept = mean(wine$quality), linetype='longdash', color='blue', alpha=.5)
ggplot(data=wine, aes(x=quality, y=alcohol)) +
geom_jitter(alpha=0.5) +
geom_smooth(method='lm', aes(group = 1))+
geom_hline(yintercept=mean(wine$alcohol), linetype='longdash', alpha=.5, color='blue') +
geom_vline(xintercept = mean(wine$quality), linetype='longdash', color='blue', alpha=.5)
ggplot(data=wine, aes(x=quality, y=alcohol)) +
geom_jitter(alpha=0.25) +
geom_smooth()
ggplot(data=wine, aes(x=quality, y=alcohol)) +
geom_jitter(alpha=0.25) +
geom_smooth(method='lm')
ggplot(data=wine, aes(x=quality, y=alcohol)) + geom_jitter(alpha=0.25) +
geom_smooth(method='lm')
ggsave("wine_alcohol_vs_quality_scatter_smooth.jpg")
tapply(wine$volatile.acidity, wine$quality, mean)
ggplot(data=wine, aes(y=volatile.acidity, x=factor(quality))) +
geom_boxplot()
ggplot(data=wine, aes(y=volatile.acidity, x=quality)) + geom_jitter(alpha=0.25) +
geom_smooth(method='lm')
tapply(wine$volatile.acidity, wine$quality, mean)
ggplot(data=wine, aes(y=volatile.acidity, x=factor(quality))) +
geom_boxplot()
ggsave("wine_volatile_acidity_vs_quality_boxplot.jpg")
ggplot(data=wine, aes(y=volatile.acidity, x=quality)) + geom_jitter(alpha=0.25) +
geom_smooth(method='lm')
ggsave("wine_volatile_acidity_vs_alcohol_scatter_smooth.jpg")
tapply(wine$pH, wine$quality, mean)
ggplot(data=wine, aes(y=pH, x=factor(quality))) + geom_boxplot()
ggsave("wine_pH_vs_quality_boxplot.jpg")
ggplot(data=wine, aes(y=pH, x=quality)) + geom_jitter(alpha=0.25) +
geom_smooth(method='lm')
ggsave("wine_pH_vs_quality_scatter_smooth.jpg")
wine$quality.cut <- cut(wine$quality.cut, breaks=c(0,4,6,10), labels=c("Bad Wine", "Average Wine", "Good Wine"))
wine$quality.cut <- cut(wine$quality, breaks=c(0,4,6,10), labels=c("Bad Wine", "Average Wine", "Good Wine"))
table(wine$quality.cut)
wine$quality.cut <- cut(wine$quality, breaks=c(0,4,7,10), labels=c("Bad Wine", "Average Wine", "Good Wine"))
table(wine$quality.cut)
wine$quality.cut <- cut(wine$quality, breaks=c(0,4,7,10), labels=c("Bad Wine", "Average Wine", "Good Wine"))
wine$quality.cut <- cut(wine$quality, breaks=c(0,4,6,10))
table(wine$quality.cut)
ggplot(data=wine, aes(x=quality)) + geom_bar(binwidth=1, color='black', fill='green') +
geom_vline(xintercept = mean(wine$quality), linetype= 'longdash', color='red', alpha=.5)+
geom_vline(xintercept = median(wine$quality), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(wine$quality, 0.25) - 1.5 * IQR(wine$quality),
linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(wine$quality, 0.75) + 1.5 * IQR(wine$quality),
linetype='dashed', alpha=.5)
table(wine$quality)
wine$quality.cut <- cut(wine$quality, breaks=c(0,4,6,10), labels=c("Bad Wine", "Average Wine", "Good Wine"))
table(wine$quality.cut)
count(wine)
length(wine)
nrow(wine)
nrow(wine$quality.cut == "Bad Wine")
names(wine$quality.cut)
summary(wine$quality.cut)
nrow(wine[wine$quality.cut == "Bad Wine"])
head(wine)
wine[quality==9]
wine[wine$quality==9]
wine[,wine$quality==9]
wine[,wine$quality=9]
wine[,wine$quality > 8]
wine[wine$quality > 8,]
nrow(wine[wine$quality.cut == "Bad Wine",])
table(wine$quality.cut)
savehistory("~/GitHub/EDA/history-sep26-1.R")
