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
wine <- read.csv("./wineQualityWhites.csv")
getwd()
setwd("github/eda")
wine <- read.csv("./wineQualityWhites.csv")
?describe
library(ggplot2)
library(psych)
library(gridExtra)
library(memisc)
?describe
describe(wine, skew=F, trim=0)
describe(wine, skew=F, range=F)
describe(wine, skew=F, fast=T)
describe(wine, fast=T)
?pairs.panel
library(psych)
?pairs.panels
?cor.plot
ggplot(data=wine, aes(x=alcohol)) + geom_bar(color='black', fill='green') +
geom_vline(xintercept = mean(wine$alcohol), linetype= 'longdash', color='red', alpha=.5)+
geom_vline(xintercept = median(wine$alcohol), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(wine$alcohol, 0.25) - 1.5 * IQR(wine$alcohol), linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(wine$alcohol, 0.75) + 1.5 * IQR(wine$alcohol), linetype='dashed', alpha=.5)
ggplot(data=wine, aes(x=alcohol)) + geom_bar(binwidth=0.5, color='black', fill='green') +
geom_vline(xintercept = mean(wine$alcohol), linetype= 'longdash', color='red', alpha=.5)+
geom_vline(xintercept = median(wine$alcohol), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(wine$alcohol, 0.25) - 1.5 * IQR(wine$alcohol), linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(wine$alcohol, 0.75) + 1.5 * IQR(wine$alcohol), linetype='dashed', alpha=.5)
summary(wine$alcohol)
IQR(wine$alcohol)
summary(wine$pH)
IQR(wine$pH)
ggplot(data=wine, aes(x=pH)) + geom_bar(binwidth=0.05, color='black', fill='green') +
geom_vline(xintercept = mean(wine$pH), linetype= 'longdash', color='red', alpha=.5)+
geom_vline(xintercept = median(wine$pH), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(wine$pH, 0.25) - 1.5 * IQR(wine$pH), linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(wine$pH, 0.75) + 1.5 * IQR(wine$pH), linetype='dashed', alpha=.5)
summary(wine$volatile.acidity)
function ggCustomHistogram(hist_var, hist_bindwidth) {
ggplot(data=wine, aes(x=hist_var)) + geom_bar(binwidth=hist_binwidth, color='black', fill='green') +
geom_vline(xintercept = mean(wine$hist_var), linetype= 'longdash', color='red', alpha=.5)+
geom_vline(xintercept = median(wine$hist_var), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(wine$hist_var, 0.25) - 1.5 * IQR(wine$hist_var), linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(wine$hist_var, 0.75) + 1.5 * IQR(wine$hist_var), linetype='dashed', alpha=.5)
}
ggCustomHistogram <- function (hist_var, hist_bindwidth) {
return(
ggplot(data=wine, aes(x=hist_var)) +
geom_bar(binwidth=hist_binwidth, color='black', fill='green') +
geom_vline(xintercept = mean(wine$hist_var), linetype= 'longdash', color='red', alpha=.5) +
geom_vline(xintercept = median(wine$hist_var), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(wine$hist_var, 0.25) - 1.5 * IQR(wine$hist_var), linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(wine$hist_var, 0.75) + 1.5 * IQR(wine$hist_var), linetype='dashed', alpha=.5) )
}
ggCustomeHistogram(volatile.acidity, 0.01)
ggCustomHistogram(volatile.acidity, 0.01)
ggCustomHistogram <- function (hist_var, hist_binwidth) {
return(
ggplot(data=wine, aes(x=hist_var)) +
geom_bar(binwidth=hist_binwidth, color='black', fill='green') +
geom_vline(xintercept = mean(wine$hist_var), linetype= 'longdash', color='red', alpha=.5) +
geom_vline(xintercept = median(wine$hist_var), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(wine$hist_var, 0.25) - 1.5 * IQR(wine$hist_var), linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(wine$hist_var, 0.75) + 1.5 * IQR(wine$hist_var), linetype='dashed', alpha=.5) )
}
ggCustomHistogram(volatile.acidity, 0.01)
ggCustomHistogram <- function(hist_var, hist_binwidth) {
return(
ggplot(data=wine, aes(x=hist_var)) +
geom_bar(binwidth=hist_binwidth, color='black', fill='green') +
geom_vline(xintercept = mean(wine$hist_var), linetype= 'longdash', color='red', alpha=.5) +
geom_vline(xintercept = median(wine$hist_var), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(wine$hist_var, 0.25) - 1.5 * IQR(wine$hist_var), linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(wine$hist_var, 0.75) + 1.5 * IQR(wine$hist_var), linetype='dashed', alpha=.5) )
}
ggCustomHistogram(volatile.acidity, 0.01)
ggCustomHistogram <- function(hist_var, hist_binwidth) {
return(
ggplot(data=wine, aes(x=hist_var)) +
geom_bar(binwidth=hist_binwidth, color='black', fill='green') +
geom_vline(xintercept = mean(hist_var), linetype= 'longdash', color='red', alpha=.5) +
geom_vline(xintercept = median(hist_var), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(hist_var, 0.25) - 1.5 * IQR(hist_var), linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(hist_var, 0.75) + 1.5 * IQR(hist_var), linetype='dashed', alpha=.5) )
}
ggCustomHistogram(wine$volatile.acidity, 0.01)
str(ggcustomeHistogram)
ggCustomHistogram <- function(hist_var, hist_binwidth) {
return(
ggplot(data=wine, aes_string(x=hist_var)) +
geom_bar(binwidth=hist_binwidth, color='black', fill='green') +
geom_vline(xintercept = mean(hist_var), linetype= 'longdash', color='red', alpha=.5) +
geom_vline(xintercept = median(hist_var), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(hist_var, 0.25) - 1.5 * IQR(hist_var), linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(hist_var, 0.75) + 1.5 * IQR(hist_var), linetype='dashed', alpha=.5) )
}
ggCustomHistogram(wine$volatile.acidity, 0.01)
ggCustomHistogram("wine$volatile.acidity", 0.01)
ggCustomHistogram("volatile.acidity", 0.01)
ggCustomHistogram <- function(hist_var, hist_binwidth) {
return(
ggplot(data=wine, aes_string(x=hist_var)) +
geom_bar(binwidth=hist_binwidth, color='black', fill='green') +
geom_vline(xintercept = mean(wine$hist_var), linetype= 'longdash', color='red', alpha=.5) +
geom_vline(xintercept = median(wine$hist_var), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(hist_var, 0.25) - 1.5 * IQR(hist_var), linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(hist_var, 0.75) + 1.5 * IQR(hist_var), linetype='dashed', alpha=.5) )
}
ggCustomHistogram("volatile.acidity", 0.01)
ggCustomHistogram <- function(hist_var, hist_binwidth) {
return(
ggplot(data=wine, aes_string(x=hist_var)) +
geom_bar(binwidth=hist_binwidth, color='black', fill='green')
)
}
ggCustomHistogram("volatile.acidity", 0.01)
summray(wine["volatile.acidity"])
summary(wine["volatile.acidity"])
summary(wine$wolatile.acidity)
summary(wine$volatile.acidity)
summary(wine[,"volatile.acidity"])
ggCustomHistogram <- function(hist_var, hist_binwidth) {
return(
ggplot(data=wine, aes_string(x=hist_var)) +
geom_bar(binwidth=hist_binwidth, color='black', fill='green')
geom_vline(xintercept = mean(wine[,hist_var]), linetype= 'longdash', color='red', alpha=.5) +
geom_vline(xintercept = median(wine[,hist_var]), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(wine[,hist_var], 0.25) - 1.5 * IQR(wine,hist_var]), linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(wine[,hist_var], 0.75) + 1.5 * IQR(wine[,hist_var]), linetype='dashed', alpha=.5) )
}
ggCustomHistogram <- function(hist_var, hist_binwidth) {
return(
ggplot(data=wine, aes_string(x=hist_var)) +
geom_bar(binwidth=hist_binwidth, color='black', fill='green') +
geom_vline(xintercept = mean(wine[,hist_var]), linetype= 'longdash', color='red', alpha=.5) +
geom_vline(xintercept = median(wine[,hist_var]), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(wine[,hist_var], 0.25) - 1.5 * IQR(wine,hist_var]), linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(wine[,hist_var], 0.75) + 1.5 * IQR(wine[,hist_var]), linetype='dashed', alpha=.5) )
}
ggCustomHistogram <- function(hist_var, hist_binwidth) {
return(
ggplot(data=wine, aes_string(x=hist_var)) +
geom_bar(binwidth=hist_binwidth, color='black', fill='green') +
geom_vline(xintercept = mean(wine[,hist_var]), linetype= 'longdash', color='red', alpha=.5) +
geom_vline(xintercept = median(wine[,hist_var]), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(wine[,hist_var], 0.25) - 1.5 * IQR(wine[],hist_var]), linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(wine[,hist_var], 0.75) + 1.5 * IQR(wine[,hist_var]), linetype='dashed', alpha=.5) )
}
ggCustomHistogram <- function(hist_var, hist_binwidth) {
return(
ggplot(data=wine, aes_string(x=hist_var)) +
geom_bar(binwidth=hist_binwidth, color='black', fill='green') +
geom_vline(xintercept = mean(wine[,hist_var]), linetype= 'longdash', color='red', alpha=.5) +
geom_vline(xintercept = median(wine[,hist_var]), linetype='longdash', color='blue', alpha=.5) +
geom_vline(xintercept = quantile(wine[,hist_var], 0.25) - 1.5 * IQR(wine[,hist_var]), linetype='dashed', alpha=.5) +
geom_vline(xintercept = quantile(wine[,hist_var], 0.75) + 1.5 * IQR(wine[,hist_var]), linetype='dashed', alpha=.5) )
}
ggCustomHistogram("volatile.acidity", 0.01)
ggCustomHistogram("quality", 1)
ggCustomHistogram("alcohol", 0.5)
ggCustomHistogram("pH", 0.1)
summary(wine$volatile.acidity)
ggCustomHistogram("volatile.acidity", 0.01)
ggCustomHistogram("volatile.acidity", 0.05)
0.32+ 1.5 * IQR(wine$volatile.acidity)
summary(wine$pH)
ggCustomHistogram("pH", 0.05)
?lowerCor
lowerMat(wine[2:13])
lowerCor(wine[2:13])
lowerCor(wine[2:])
lowerCor(wine[2:-1])
savehistory("~/GitHub/EDA/history-sep27-2.R")
