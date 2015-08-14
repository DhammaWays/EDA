cls_list
class(cls_list)
as.character(cls_list)
?sapply
cls_vect <- sapply(flags, class)
class(cls_vect)
sum(flags$orange)
flag_colors <- flags[, 11:17]
head(flag_colors)
lapply(flag_colors, sum)
sapply(flag_colors, sum)
saplly(flag_colors, mean)
sapply(flag_colors, mean)
flag_shapes <- flags[,19:23]
lapply(flag_shapes, range)
shape_mat <- sapply(flag_shapes, range)
shape_mat
class(shape_mat)
unique(c(3, 4, 5, 5, 5, 6, 6))
unique_vals <- lapply(flags, unique)
unique_vals
lapply(unique_vals, length)
sapply(unique_vals, length)
sapply(flags, unique)
lapply(unique_vals, function(e) e[2])
sapply(flags, unique)
vapply(flags, unique, numeric(1))
ok()
sapply(flags, class)
vapply(flags, class, character(1))
?tapply
table(flags$landmass)
table(flags$animate)
tapply(flags$animate, flags$landmass, mean)
tapply(flags$population, flags$red, summary)
tapply(flags$population, flags$landmass, summary)
ls()
class(plants)
dim(plants)
nrows(plants)
nrow(plants)
ncol(plants)
objects.size(plants)
object.size(plants)
names(plants)
head(plants)
head(plants, 10)
tail(plants, 15)
summary(plants)
play()
data <- summary(plants)
data
class(data)
dim(data)
data[1]
data[,1]
data[1,]
data[2,]
data["Foliage_Color"]
data["Foliage_Color", 1]
names(data)
data
head(data, 3)
nxt()
table(plants$Active_Growth_Period)
str(plants)
source('~/GitHub/ProgrammingAssignment2/cachematrix.R')
Rprof()
m <- makeCAcheMatrix(matrix(rnorm(10000), 100, 100))
m <- makeCacheMatrix(matrix(rnorm(10000), 100, 100))
v <- cacheSolve(m)
Rprof(NULL)
summaryRprof()
str(summaryRprof())
summaryRprof()
$by.self
summaryRprof()$by.self
v <- cacheSolve(m)
se.seed(1)
set.seed(1)
rpois(5, 2)
?pnorm
pnorm(c(0,1,2))
p <- pnorm(c(0,1,2))
qnorm(p)
p <- pnorm(1:100)
qnorm(p)
p <- pnorm(1:5)
p
qnorm(p)
ppois(5, 2)
p <- ppois(5, 2)
qpois(p)
qpois(p, 2)
set.seed(10)
x <- rep(0:1, each=5)
e <- rnorm(10, 0, 20)
y <- 0.5 + 2 * x + e
x
e
y
plot(x,y)
?rbinom
rbinom(10, 1, 0.5)
rbinom(1, 10, 0.5)
summaryRProf()$by.total
summaryRprof()$by.total
Rprof()
v <- cacheSolve(m)
Rprof(NULL)
summaryRprof()$by.total
m <- makeCacheMatrix(matrix(rnorm(100), 10, 10))
Rprof()
v <- cacheSolve(m)
Rprof(NULL)
summaryRprof()$by.total
summaryRprof()
m <- makeCacheMatrix(matrix(rnorm(10000), 100, 100))
Rprof()
v <- cacheSolve(m)
Rprof(NULL)
summaryRprof()$by.total
v <- cacheSolve(m)
m <- makeCacheMatrix(matrix(rnorm(1000000), 1000, 1000))
Rprof()
v <- cacheSolve(m)
summaryRprof()$by.total
Rprof(NULL)
summaryRprof()$by.total
set.seed(1)
rpois(5,2)
v <- cacheSolve(m)
load('mtcars')
ls()
str(mtcars)
summary(mtcars)
average(mtcars$mpg)
mean(mtcars$mpg)
fit <- lm(mpg~wt, data=mtcars)
summary(fit)
str(fit)
plot(fit)
getwd()
install.packages("ggplot2", dependencies = T)
install.packages("knitr", dependencies = T)
install.packages("dplyr", dependencies = T)
getwd()
setwd('GitHub/EDA')
getwd()
ls
ls()
stinfo <- read.csv('stateData.csv')
summary(stinfo)
neinfo <- subset(stinfo, state.region == 1)
dim(neinfo)
stinfo[ stinfo$ highSchoolGrad > 50, ]
stinfo[ stinfo$ highSchoolGrad > 50, c(X,  highSchoolGrad)]
stinfo[ stinfo$ highSchoolGrad > 50, c(stinfo$X,  stinfo$highSchoolGrad)]
stinfo[ stinfo$ highSchoolGrad > 50, stinfo$X]
stinfo[ stinfo$ highSchoolGrad > 50, 1]
stinfo[ stinfo$ highSchoolGrad > 50, c(1,5)]
stinfo[ stinfo$ highSchoolGrad > 50, c(1,10)]
?sort
d1 <- stinfo[ stinfo$ highSchoolGrad > 50, c(1,10)]
d1[order(-d1$highSchoolGrad),]
stinfo[order(-stinfo$ highSchoolGrad), c(2,10)]
```{r}
summary(mtcars)
```
summary(mtcars)
efficient <- subset(mtcars, mpgg >= 23 )
efficient <- subset(mtcars, mpg >= 23 )
length(efficient)
efficient$nrows
dim(efficient)
nrows(efficient)
row.names(efficient)
col.names(efficient)
column.names(efficient)
names(efficient)
summary(efficient)
str(efficient)
dims(efficient)
dim(efficient)
dim(efficient)[0]
dim(efficient)[1]
length(efficient$mpg)
length(efficient$mpg)
subset(mtcars, mpg > 30 & hp > 100)
subset(mtcars, mpg < 14 | disp > 390)
subset(mtcars, qsec <= 16.90)
lightCars <- subset(mtcars, wt < 2.0)
length(lighCars$wt)
lightCars
lightCars <- subset(mtcars, wt < 2.0)
length(lightCars$wt)
lightCars
subset(mtcars, mpg >= 30 | hp < 100)
subset(mtcars, mpg >= 30 | hp < 60)
mtcars$year <- 1974
mtcars <- subset(mtcars, select = -year)
mtcars$year <- c(1973, 1974)
subset(mtcars, mpg > 30 & hp > 100)
mtcars <- subset(mtcars, select = -year)
mtcars$wt
cond <- mtcars$wt < 3
cond
mtcars$weight_class <- ifelse(cond, 'light', 'average')
mtcars$weight_class
cond <- mtcars$wt > 3.5
mtcars$weight_class <- ifelse(cond, 'heavy', mtcars$weight_class)
mtcars$weight_class
rm(cond)
rm(efficient)
install.packages('knitr', dependencies = T)
library(knitr)
subset(mtcars, mpg >= 30 | hp < 60)
subset(mtcars, mpg >= 30 | hp < 60)
ldir()
lsdir()
?getwd
dir()
rdata <- read.csv('reddit.csv')
summary(rdata)
levels(rdata$cheese)
levels(rdata$dog.cat)
levels(rdata$income.range)
?order
?levels
levels(rdata$age.range)
relevel(rdata$age.range, "Under 18")
relevel(rdata$age.range, "Under 18")
library('ggplot2')
qplot(data=rdata)
qplot(data=rdata, x=age.range)
qplot(data=rdata, x=relevel(age.range, "Under 18"))
rdata$age.range = relevel(rdata$age.range, "Under 18")
qplot(data=rdata, x=age.range)
dir()
pf <- read.csv('pseudo_facbook.tsc', sep='\t')
pf <- read.csv('pseudo_facbook.tsv', sep='\t')
pf <- read.csv('pseudo_facebook.tsv', sep='\t')
levels(pf$friend_count)
summary(pf$friend_count)
qplot(data=pf, x=friend_count)
qplot(data=pf, x=friend_count, binwidth=25) + scale_x_continous(limits=c(0,1000), breaks=c(0,1000,50))
qplot(data=pf, x=friend_count, binwidth=25) + scale_x_continuous(limits=c(0,1000), breaks=c(0,1000,50))
qplot(data=pf, x=friend_count, binwidth=25) + scale_x_continuous(limits=c(0,1000), breaks=c(0,1000,50)) + facet_wrap(~gender, ncol=2)
qplot(data=subset(pf, !is.na(gender)), x=friend_count, binwidth=25) + scale_x_continuous(limits=c(0,1000), breaks=c(0,1000,50)) + facet_wrap(~gender, ncol=2)
table(pf$gender)
by(pf$friend_count, pf$gender, summary)
qplot(data=pf, x=tenure, binwidth=365)
qplot(data=pf, x=tenure/365)
qplot(data=pf, x=tenure, binwidth=365,color=I('black'), fill=I('blue'))
qplot(data=pf, x=tenure, binwidth=365,color=I('black'), fill=I('blue')) + scale_x_continuous( limits=c(0,3000), breaks=c(0, 3000, 365))
qplot(data=pf, x=age)
qplot(data=pf, x=age, binwidth=10)
qplot(data=pf, x=age, binwidth=10) + scale_x_discrete(breaks=10:100)
qplot(data=pf, x=age, binwidth=10) + scale_x_discrete(breaks=0:100)
qplot(data=pf, x=age, binwidth=10) + scale_x_discrete(breaks=0:10)
qplot(data=pf, x=age, binwidth=10) + scale_x_discrete(breaks=0:20)
qplot(data=pf, x=age, binwidth=10) + scale_x_discrete(breaks=0:50)
qplot(data=pf, x=age, binwidth=10) + scale_x_continous(breaks=c(0,120,10))
qplot(data=pf, x=age, binwidth=10) + scale_x_continuous(breaks=c(0,120,10))
qplot(data=pf, x=age, binwidth=10) + scale_x_discrete(breaks=c(0,120,10))
qplot(data=pf, x=age, binwidth=10, xlab='Age of Facebook User', ylab='Count in sample') + scale_x_discrete(breaks=c(0,120,10))
install.packages('gridExtra')
library('gridExtra')
qplot(data=pf, x=friend_count)
qplot(data=pf, x=friend_count, binwidth=25) + scale_x_continuous(limits=c(0,1000), breaks=c(0,1000,50))
p1 = qplot(data=pf, x=friend_count, binwidth=25) + scale_x_continuous(limits=c(0,1000), breaks=c(0,1000,50))
p2 = qplot(data=pf, x=friend_count, binwidth=25) + scale_x_continuous(limits=c(0,1000), breaks=c(0,1000,50)) + scale_x_log10()
p2 = qplot(data=pf, x=friend_count, binwidth=25) + scale_x_log10()
p3 = qplot(data=pf, x=friend_count, binwidth=25) + scale_x_sqrt()
grid.ararnge(p1,p2,p3)
grid.arrange(p1,p2,p3)
p1 = qplot(data=pf, x=friend_count)
p2 = qplot(data=pf, x=log10(friend_count+1))
p3 = qplot(data=pf, x=sqrt(friend_Count))
grid.arrange(p1,p2,p3)
p3 = qplot(data=pf, x=sqrt(friend_count))
grid.arrange(p1,p2,p3)
qplot(data=subset(pf, !is.na(gender)), x=friend_count, binwidth=25, geom='freqpoly', color=gender) + scale_x_continuous(limits=c(0,1000), breaks=c(0,1000,50))
qplot(data=subset(pf, !is.na(gender)), x=friend_count, y=count/sum(count), binwidth=25, geom='freqpoly', color=gender) + scale_x_continuous(limits=c(0,1000), breaks=c(0,1000,50))
qplot(data=subset(pf, !is.na(gender)), x=friend_count, y=..count../sum(..count..), binwidth=25, geom='freqpoly', color=gender) + scale_x_continuous(limits=c(0,1000), breaks=c(0,1000,50))
qplot(data=subset(pf, !is.na(gender)), x=friend_count, y=..count../sum(..count..), binwidth=25, geom='freqpoly', color=gender) + scale_x_continuous(limits=c(400,1000), breaks=c(400,1000,50))
qplot(data=subset(pf, !is.na(gender)), x=friend_count, y=..count../sum(..count..), binwidth=10, geom='freqpoly', color=gender) + scale_x_continuous(limits=c(400,1000), breaks=c(400,1000,50))
qplot(data=subset(pf, !is.na(gender)), x=www_likes, y=..count../sum(..count..), binwidth=10, geom='freqpoly', color=gender) + scale_x_continuous(limits=c(400,1000), breaks=c(400,1000,50))
qplot(data=subset(pf, !is.na(gender)), x=www_likes, y=..count../sum(..count..), binwidth=10, geom='freqpoly', color=gender) + scale_x_continuous(limits=c(400,1000), breaks=c(400,1000,50))
summary(pf$www_likes)
qplot(data=subset(pf, !is.na(gender)), x=www_likes, y=..count../sum(..count..), binwidth=50, geom='freqpoly', color=gender) + scale_x_continuous(limits=c(0,14860), breaks=c(0,14860,50))
qplot(data=subset(pf, !is.na(gender)), x=www_likes, y=..count../sum(..count..), binwidth=50, geom='freqpoly', color=gender)
qplot(data=subset(pf, !is.na(gender)), x=www_likes, y=..count../sum(..count..), binwidth=50, geom='freqpoly', color=gender) + scale_x_continuous(limits=c(0,2000), breaks=c(0,2000,50))
qplot(data=subset(pf, !is.na(gender)), x=www_likes, y=..count../sum(..count..), binwidth=50, geom='freqpoly', color=gender) + scale_x_continuous(limits=c(50,1000), breaks=c(0,2000,50))
qplot(data=subset(pf, !is.na(gender)), x=www_likes, y=..count../sum(..count..), binwidth=50, geom='freqpoly', color=gender) + scale_x_continuous(limits=c(0,2000), breaks=c(0,2000,50))
qplot(data=subset(pf, !is.na(gender)), x=www_likes, y=..count../sum(..count..), binwidth=50, geom='freqpoly', color=gender) + scale_x_continuous(limits=c(0,1000), breaks=c(0,2000,50))
qplot(data=subset(pf, !is.na(gender)), x=www_likes, y=..count../sum(..count..), binwidth=50, geom='freqpoly', color=gender) + scale_x_continuous(limits=c(25,1000), breaks=c(0,2000,50))
qplot(data=subset(pf, !is.na(gender)), x=www_likes, y=..count../sum(..count..), binwidth=50, geom='freqpoly', color=gender) + scale_x_continuous(limits=c(10,1000), breaks=c(0,2000,50))
by(pf$www_likes, pf$gender, summary)
by(pf$www_likes, pf$gender, sum)
qplot(data=subset(pf, !is.na(gender)), x=gender, y=friend_count, geom='boxplot')
summary(pf$friend_count)
qplot(data=subset(pf, !is.na(gender)), x=gender, y=friend_count, geom='boxplot', ylim=(31.0, 206.0))
qplot(data=subset(pf, !is.na(gender)), x=gender, y=friend_count, geom='boxplot', ylim=c(31.0, 206.0))
by(pf$friend_Count, pf$gender, summary)
by(pf$friend_count, pf$gender, summary)
pf1 <- subset(pf, !is.na(gender))
by(pf1$friend_count, pf1$gender, summary)
qplot(data=subset(pf, !is.na(gender)), x=gender, y=friend_count, geom='boxplot') + coordcartesian(ylim=c(0,100))
qplot(data=subset(pf, !is.na(gender)), x=gender, y=friend_count, geom='boxplot') + coord_cartesian(ylim=c(0,100))
qplot(data=subset(pf, !is.na(gender)), x=gender, y=friend_count, geom='boxplot') + coord_cartesian(ylim=c(0,1000))
by(pf$friendships_initiated, pf$gender, summary)
qplot(data=subset(pf, !is.na(gender)), x=gender, y=friendships_initiated, geom='boxplot') + coord_cartesian(ylim=c(0,150))
?factor
factor(letters[1:5])
factor(c(0,1,1,0))
pf$mobile_check_in <- NA
pf$mobile_check_in <- ifelse(pf$mobile_check_in > 0, 1, 0)
pf$mobile_check_in <- factor(pf$mobile_check_in)
levels(pf$mobile_check_in)
factor(pf$mobile_check_in)
summary(pf$mobile_check_in)
pf$mobile_check_in <- ifelse(pf$mobile_likes > 0, 1, 0)
pf$mobile_check_in <- factor(pf$mobile_check_in)
levels(pf$mobile_check_in)
summary(pf$mobile_check_in)
length(pf$mobile_check_in)
sum(pf$mobile_check_in)/length(pf$mobile_check_in)
sum(pf$mobile_check_in != 0)/length(pf$mobile_check_in)
sum(pf$mobile_check_in == 0)/length(pf$mobile_check_in)
100 * sum(pf$mobile_check_in == 0)/length(pf$mobile_check_in)
100 * sum(pf$mobile_check_in == 1)/length(pf$mobile_check_in)
?substr
rm(v)
rm(pf1)
str(rdata)
getwd()
dfcell <- read.csv('cell_phone_total.csv', header = T, row.names = 1, check.names = F)
dfcell <- read.csv('cell_phone_total.csv', header = T, row.names = 1, check.names = F)
getwd()
dir()
dfcell <- read.csv('cell_phone_total.csv', header = T, row.names = 1, check.names = F)
names(dfcell)
dfcell <- read.csv('cell_phone_total.csv', header = T, row.names = 1)
dfcell <- read.csv('cell_phone_total.csv', header = T, row.names = 1, check.names = F)
summary(dfcell)
names(dfcell)
dfcell <- read.csv('cell_phone_total.csv', header = T, row.names = 1, check.names = F)
row.names(dfcell)
?read.table
dfcell <- read.table('cell_phone_total.csv', header = T, row.names = 1, check.names = F)
dfcell <- read.table('cell_phone_total.csv', header = T)
dfcell <- read.table('cell_phone_total.csv', header = T, row.names = 1, check.names = F, sep=',')
dfcell <- read.delim('cell_phone_total.csv')
?read.delim
dfcell <- read.delim('cell_phone_total.csv', header=T, sep=",")
dfcell <- read.table('cell_phone_total.csv', header=T, sep=",", check.names=F)
dfcell <- read.delim('cell_phone_total.csv', header=T, sep=",", check.names=F)
dfcell <- read.delim('cell_phone_total.csv', header=T, sep=",", check.names=F, fill=F)
dfcell <- read.delim('cell_phone_total.csv', header=T, sep=",", check.names=F, fill=F)
dfcell <- read.delim('cell_phone_total.csv', header=T, sep=",", check.names=F, blank.lines.skip=T)
dfcell <- read.csv('cell_phone_total.csv', header = T, row.names = 1, check.names = F, col.names=NULL)
dfcell <- read.csv('cell_phone_total.csv', header = T, row.names = 1, check.names = F, row.names=NULL)
dfcell <- read.csv('cell_phone_total.csv', header = T, row.names = 1, check.names = F)
dfcell <- read.csv('cell_phone_total.csv', header = T, check.names = F)
df1 <- df_cell[, !all(is.na(df_cell))]
df1 <- dfcell[, !all(is.na(dfcell))]
df1 <- dfcell[, colSums(is.na(dfcell)) < nrow(dfcell)]
nrow(dfcell)
c1 <- colSums(is.na(dfcell))
?all
all(dfcell[,2])
all(dfcell[,3])
all(dfcell[,3], na.rm=T)
all(dfcell[,2], na.rm=T)
all(dfcell[,5], na.rm=T)
all(dfcell[,10], na.rm=T)
all(dfcell[,20], na.rm=T)
all(dfcell[,45], na.rm=T)
df2 <- dfcell[,all(dfcell, na.rm=T)]
all(dfcell[,1], na.rm=T)
dfcell <- read.csv('cell_phone_total.csv', header = T)
dfcell <- read.csv('cell_phone_total.csv', header = T, row.names=1)
dfcell <- read.csv('cell_phone_total.csv', header = T, row.names=1. check.names=F)
dfcell <- read.csv('cell_phone_total.csv', header = T, row.names = 1, check.names = F)
df2 <- dfcell[,all(dfcell, na.rm=T)]
df2 <- dfcell[,function(x) all(x, na.rm=T)]
all(dfcell, na.rm=T)
all(dfcell[,1], na.rm=T)
all(dfcell[,2], na.rm=T)
df2 <- dfcell[,all(dfcell, na.rm=T) == T]
View(df2)
?subset
df2 <- subset(dfcell, select=all[dfcell,na.rm=T])
?select
?data.frame
dfcell <- read.csv('cell_phone_total.csv', header = T, check.names = F)
dfcell <- dfcell[,colSums(is.na(dfcell)) < nrow(dfcell)]
ncol(dfcell)
df2 <- dfcell[sum(dfcell[2:nrow(dfecll)]) > 0,]
df2 <- dfcell[sum(dfcell[2:nrow(dfcell)]) > 0,]
?rowSums
rowSums(dfcell[,2:])
rowSums(dfcell[,2:ncol(dfcell)])
rowSums(dfcell[,2:ncol(dfcell)]) > 0
rowSums(dfcell[,2:ncol(dfcell)]) == 0
rowSums(dfcell[,2:ncol(dfcell)]) > 0
rowSums(dfcell[,2:ncol(dfcell)], na.rm=T) > 0
df2 <- dfcell[rowSums(dfcell[,2:ncol(dfcell)], n.rm=T) > 0, ]
df2 <- dfcell[rowSums(dfcell[,2:ncol(dfcell)], na.rm=T) > 0, ]
df2[0]
df2[1,]
df2[2,]
dfcell <- read.csv('cell_phone_total.csv', header = T, row.names = 1, check.names = F)
df2 <- subset(dfcell, rowSums(dfcell, na.rm=T) > 0, colSums(dfcell, na.rm=T) > 0)
row.names(df2)
df2['country'] = row.names(df2)
?gather
?gather_
library(tidyr)
install.packages("tidyr")
?gather
?gather
install.packages("dplyr")
library(tidyr)
library(dplyr)
?gather
df3 <- gather(df2, "year", "CellPhoneTotal", -country)
head(df3)
tail(df3)
df3[df3$country == "India",]
qplot(df3, CellPhoneTotal~year)
library(ggplot2)
qplot(df3, CellPhoneTotal~year)
qplot(df3$county == "India", y=CellPhoneTotal, x=year)
qplot(df3$county == "India", y="CellPhoneTotal", x="year")
qplot(df3, subset=df3$county == "India", y="CellPhoneTotal", x="year")
?qplot
qplot(data=df3$county == "India", y="CellPhoneTotal", x="year")
qplot(data=subset(df3, county == "India"), y="CellPhoneTotal", x="year")
qplot(data=subset(df3, country == "India"), y="CellPhoneTotal", x="year")
qplot(data=subset(df3, country = "India"), y="CellPhoneTotal", x="year")
?xyplot
qplot(data=subset(df3, country = "India"), y="CellPhoneTotal", x="year", geom="bar")
qplot(data=subset(df3, country = "India"), y="CellPhoneTotal", x="year") + geom_bar(stat="identity")
qplot(data=subset(df3, country = "India"), x="CellPhoneTotal") + geom_bar(stat="identity")
qplot(data=subset(df3, country = "India"), y="CellPhoneTotal", x="year", geom="bar") + geom_bar()
subset(df3, country == "India")
subset(df3, country = "India")
qplot(data=subset(df3, country == "India"), y="CellPhoneTotal", x="year") + geom_bar(stat="identity")
ggplot(data=subset(df3, country == "India"), aes(y=CellPhoneTotal, x=year) + geom_bar(stat="identity")
)
ggplot(data=subset(df3, country == "India"), aes(y=CellPhoneTotal, x=year) ) + geom_bar(stat="identity")
qplot(data=subset(df3, country == "India"), y=CellPhoneTotal, x=year) + geom_bar(stat="identity")
qplot(data=subset(df3, country == "India"), y=CellPhoneTotal, x=year, xlim=c(1989,2011)) + geom_bar(stat="identity")
qplot(data=subset(df3, country == "India"), y=CellPhoneTotal, x=year, xlim= + geom_bar(stat="identity")
)
df3$year <- as.numeric(df3$year)
df3$country == "India"
df3[df3$country == "India",]
df3 <- gather(df2, "year", "CellPhoneTotal", -country, convert=T)
head(df3)
tail(df3)
qplot(data=subset(df3, country == "India"), y=CellPhoneTotal, x=year, xlim=c(1989,2011) )+ geom_bar(stat="identity")
qplot(data=subset(df3, country == "India"), y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011))
qplot(data=subset(df3, country == "India"), y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1994,2011))
qplot(data=subset(df3, country == "China"), y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1994,2011))
qplot(data=subset(df3, country == "Finland"), y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1994,2011))
qplot(data=subset(df3, country == "United States"), y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1994,2011))
qplot(data=df3, y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011))
qplot(data=df3, y=CellPhoneTotal, x=year) + geom_bar() + coord_cartesian(xlim=c(1990,2011))
qplot(data=df3, y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011))
qplot(data=df3, y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011), ylim=c(0,5000))
qplot(data=df3, y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011), ylim=c(0,50000))
qplot(data=df3, y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011), ylim=c(0,500000))
qplot(data=df3, y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011), ylim=c(0,5000000))
qplot(data=df3, y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011), ylim=c(0,100000))
qplot(data=df3, y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011))
qplot(data=df3, y=CellPhoneTotal, x=year, color=country) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011))
subset(df3, country %in% ["Finland", "Germany", "United States", "India", "China"])
subset(df3, country in ["Finland", "Germany", "United States", "India", "China"])
?subset
ary = c("Japan", "India", "Russia")
"India" in ary
"India" %in% ary
"UK" %in% ary
subset(df3, country %in% c("Finland", "Germany", "United States", "India", "China")
)
qplot(data=subset(df3,, country %in% c("Finland", "United States", "South Korea", "India", "China"), y=CellPhoneTotal, x=year, color=country) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011))
)
qplot(data=subset(df3,, country %in% c("Finland", "United States", "South Korea", "India", "China")), y=CellPhoneTotal, x=year, color=country) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011))
qplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")), y=CellPhoneTotal, x=year, color=country) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011))
qplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")), y=CellPhoneTotal, x=year, color=country) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011))
qplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")), y=CellPhoneTotal, x=year, fill=country) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011))
qplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")), y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011)) + facet(~country)
qplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")), y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011)) + facets(~country)
qplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")), y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011)) + facet(country)
qplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")), y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011)) + facet_wrap(~country)
qplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")), y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011)) + facet_wrap(~country, scales=free_y)
qplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")), y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011)) + facet_wrap(~country, scales="free_y")
qplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")), y=CellPhoneTotal, x=year) + geom_line(stat="identity") + coord_cartesian(xlim=c(1990,2011)) + facet_wrap(~country, scales="free_y")
qplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")), y=CellPhoneTotal, x=year, fill=country) + geom_line(stat="identity") + coord_cartesian(xlim=c(1990,2011))
qplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")), y=CellPhoneTotal, x=year, color=country) + geom_line(stat="identity") + coord_cartesian(xlim=c(1990,2011))
ggsave("cellphones_by_year_country_comparison.jpg")
qplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")), y=CellPhoneTotal, x=year) + geom_line(stat="identity") + coord_cartesian(xlim=c(1990,2011)) + facet_wrap(~country, scales="free_y")
ggsave("cellphones_by_year_for_each_country.jpg")
qplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")), y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011)) + facet_wrap(~country)
qplot(data=subset(df3,country %in% c("Finland", "United States", "South Korea", "India", "China")), y=CellPhoneTotal, x=year, fill=country) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011))
ggsave("cellphones_by_year_bar_country_comparison.jpg")
qplot(data=df3, y=CellPhoneTotal, x=year) + geom_bar(stat="identity") + coord_cartesian(xlim=c(1990,2011))
ggsave("cellphones_by_year_bar_across_all_countries.jpg")
savehistory("~/GitHub/EDA/history.R")
