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
ggplot(wine, aes(y=volatile.acidity, x=alcohol, size=pH, color=quality.cut)) + geom_point()
ggplot(wine, aes(y=volatile.acidity, x=alcohol, size=pH) + facet_wrap(~wine$quality.cut)
ggplot(wine, aes(y=volatile.acidity, x=alcohol, size=pH)) + facet_wrap(~wine$quality.cut)
ggplot(wine, aes(y=volatile.acidity, x=alcohol, size=pH)) + geom_point() + facet_wrap(~wine$quality.cut)
ggplot(wine, aes(y=volatile.acidity, x=alcohol, size=quality.cut)) + geom_point() + facet_wrap(~wine$quality.cut)
ggplot(wine, aes(y=volatile.acidity, x=alcohol, size=pH)) + geom_point() + facet_grid(.~wine$quality.cut)
ggplot(wine, aes(y=volatile.acidity, x=alcohol, size=pH)) + geom_point() + facet_grid(.~wine$quality)
ggplot(wine, aes(y=volatile.acidity, x=alcohol, size=pH)) + geom_point()
ggplot(wine, aes(y=volatile.acidity, x=alcohol, size=pH)) + geom_jitter(alpha=0.5)
ggplot(wine, aes(y=volatile.acidity, x=alcohol, color=quality.cut)) + geom_jitter(alpha=0.25)
ggplot(wine, aes(y=volatile.acidity, x=alcohol, color=quality.cut)) + geom_jitter(alpha=0.5)
ggplot(wine, aes(y=volatile.acidity, x=alcohol, color=quality.cut, size=quality)) + geom_point()
ggsave("wine_volatile_acidity_vs_alcohol_scatter_colored_sized_by_quality.jpg")
ggplot(wine, aes(y=pH, x=alcohol, color=quality.cut, size=quality)) + geom_point()
ggplot(wine, aes(y=pH, x=alcohol, color=quality.cut, size=quality)) + geom_jitter()
ggplot(wine, aes(y=pH, x=alcohol, color=quality.cut, size=quality)) + geom_point()
ggplot(wine, aes(y=pH, x=alcohol, color=quality.cut, size=quality)) + geom_jitter()
ggplot(wine, aes(y=pH, x=alcohol, color=quality.cut, size=quality)) + geom_jitter(alpha=0.75)
ggplot(wine, aes(y=pH, x=alcohol, color=quality.cut, size=quality)) + geom_jitter(alpha=0.5)
ggplot(wine, aes(y=pH, x=alcohol, color=quality.cut, size=quality)) + geom_jitter(alpha=0.3)
ggplot(wine, aes(y=pH, x=alcohol, color=quality.cut, size=quality)) + geom_jitter(alpha=0.4)
ggplot(wine, aes(y=volatile.acidity, x=alcohol, color=quality.cut, size=quality)) + geom_jitter(alpha=0.5)
ggsave("wine_volatile_acidity_vs_alcohol_scatter_colored_sized_by_quality.jpg")
ggplot(wine, aes(y=pH, x=alcohol, color=quality.cut, size=quality)) + geom_jitter(alpha=0.5)
ggsave("wine_pH_vs_alcohol_scatter_colored_sized_by_quality.jpg")
ggplot(wine, aes(y=volatile.acidity, x=alcohol, color=quality.cut, size=quality)) + geom_jitter(alpha=0.5)
ggplot(wine, aes(y=pH, x=alcohol, color=quality.cut, size=quality)) + geom_jitter(alpha=0.5)
ggplot(wine, aes(y=volatile.acidity, x=alcohol, size=pH, color=quality.cut)) + geom_jitter(alpha=0.5)
ggplot(wine, aes(y=volatile.acidity, x=alcohol, size=pH, color=quality.cut)) + geom_jitter(alpha=0.5) +coord_cartesian(xlim=c(9,13), ylim=c(0.1,0.45))
ggplot(wine, aes(y=volatile.acidity, x=alcohol, size=pH, color=quality.cut)) + geom_jitter(alpha=0.5) +coord_cartesian(xlim=c(8,13), ylim=c(0.05,0.45))
ggplot(wine, aes(y=volatile.acidity, x=alcohol, size=pH, color=quality.cut)) + geom_jitter(alpha=0.5)
install.packages('memisc')
library(memisc)
m1 <- lm(formula = quality ~ alcohol, data = wine)
m2 <- lm(formula = quality ~ alcohol + volatile.acidity, data = wine)
m3 <- lm(formula = quality ~ alcohol + volatile.acidity + pH, data = wine)
mtable(m1, m2, m3)
coeff(m3)
coef(m3)
res = resid(m3)
ggplot(wine, aes(y=res, x=quality)) + geom_point()
plot(wine$quality, res)
plot(m3)
plot(m3)
ggplot(m3)
ggplotRegression <- function (fit) {
require(ggplot2)
ggplot(fit$model, aes_string(x = names(fit$model)[2], y = names(fit$model)[1])) +
geom_point() +
stat_smooth(method = "lm", col = "red") +
labs(title = paste("Adj R2 = ",signif(summary(fit)$adj.r.squared, 5),
"Intercept =",signif(fit$coef[[1]],5 ),
" Slope =",signif(fit$coef[[2]], 5),
" P =",signif(summary(fit)$coef[2,4], 5)))
}
ggplotRegression(m3)
diagPlot<-function(model){
p1<-ggplot(model, aes(.fitted, .resid))+geom_point()
p1<-p1+stat_smooth(method="loess")+geom_hline(yintercept=0, col="red", linetype="dashed")
p1<-p1+xlab("Fitted values")+ylab("Residuals")
p1<-p1+ggtitle("Residual vs Fitted Plot")+theme_bw()
p2<-ggplot(model, aes(qqnorm(.stdresid)[[1]], .stdresid))+geom_point(na.rm = TRUE)
p2<-p2+geom_abline(aes(qqline(.stdresid)))+xlab("Theoretical Quantiles")+ylab("Standardized Residuals")
p2<-p2+ggtitle("Normal Q-Q")+theme_bw()
p3<-ggplot(model, aes(.fitted, sqrt(abs(.stdresid))))+geom_point(na.rm=TRUE)
p3<-p3+stat_smooth(method="loess", na.rm = TRUE)+xlab("Fitted Value")
p3<-p3+ylab(expression(sqrt("|Standardized residuals|")))
p3<-p3+ggtitle("Scale-Location")+theme_bw()
p4<-ggplot(model, aes(seq_along(.cooksd), .cooksd))+geom_bar(stat="identity", position="identity")
p4<-p4+xlab("Obs. Number")+ylab("Cook's distance")
p4<-p4+ggtitle("Cook's distance")+theme_bw()
p5<-ggplot(model, aes(.hat, .stdresid))+geom_point(aes(size=.cooksd), na.rm=TRUE)
p5<-p5+stat_smooth(method="loess", na.rm=TRUE)
p5<-p5+xlab("Leverage")+ylab("Standardized Residuals")
p5<-p5+ggtitle("Residual vs Leverage Plot")
p5<-p5+scale_size_continuous("Cook's Distance", range=c(1,5))
p5<-p5+theme_bw()+theme(legend.position="bottom")
p6<-ggplot(model, aes(.hat, .cooksd))+geom_point(na.rm=TRUE)+stat_smooth(method="loess", na.rm=TRUE)
p6<-p6+xlab("Leverage hii")+ylab("Cook's Distance")
p6<-p6+ggtitle("Cook's dist vs Leverage hii/(1-hii)")
p6<-p6+geom_abline(slope=seq(0,3,0.5), color="gray", linetype="dashed")
p6<-p6+theme_bw()
return(list(rvfPlot=p1, qqPlot=p2, sclLocPlot=p3, cdPlot=p4, rvlevPlot=p5, cvlPlot=p6))
}
diagPlot(m3)
library(gridExtra)
do.call(grid.arrange, c(diagPlot(m3), main="Diagnostic Plots", ncol=3))
diagPlts <- diagPlot(m3)
do.call(grid.arrange, c(diagPlts, main="Diagnostic Plots", ncol=3))
library(grid)
diagPlts <- diagPlot(m3)
do.call(grid.arrange, c(diagPlts, main="Diagnostic Plots", ncol=3))
?autoplot
autoplot(m3)
autoplot.lm(m3)
autoplot(m3)
qplot(m3)
ggplot(m3)
par(mfrow=c(2,2))
plot(m3)
abline(m3)
head(fitted(m3))
head(resid(m3))
m3f <- lm(formula = factor(quality) ~ alcohol + volatile.acidity + pH, data=wine)
m3f <- lm(formula = quality.cut ~ alcohol + volatile.acidity + pH, data=wine)
summary(m3f)
m3f <- lm(formula = as.numeric(quality.cut) ~ alcohol + volatile.acidity + pH, data=wine)
summary(m3f)
summary(m3)
vif(m3)
termplot(m3)
par(mfrow=c(2,2))
plot(m3)
termplot(m3)
coplot(quality~alcohol|volatile.acidity, panel=panel.smooth,wine)
m.glm <- glm(formula = quality ~ alcohol + volatile.acidity + pH, data = wine)
summary(m.glm)
m.glm <- glm(formula = quality ~ alcohol + volatile.acidity + pH, data = wine, family=poisson)
summary(m.glm)
ggplot(data=wine, aes(x=alcohol, y=volatile.acidity)) +
coord_cartesian(
xlim=c(quantile(wine$alcohol,.01),quantile(wine$alcohol,.99)),
ylim=c(quantile(wine$volatile.acidity,.01),quantile(wine$volatile.acidity,.99))
) +
geom_jitter(alpha=.5, aes(size=quality.cut, color=quality.cut))
wine$quality.cut <- cut(wine$quality, breaks=c(0,4,6,10), labels=c("Bad Wine: (0,4]", "Average Wine: (4, 6]", "Good Wine: (6, 10]"))
ggplot(data=wine, aes(x=alcohol, y=volatile.acidity)) +
coord_cartesian(
xlim=c(quantile(wine$alcohol,.01),quantile(wine$alcohol,.99)),
ylim=c(quantile(wine$volatile.acidity,.01),quantile(wine$volatile.acidity,.99))
) +
geom_jitter(alpha=.5, aes(size=quality.cut, color=quality.cut))
ggplot(data=wine, aes(x=alcohol, y=volatile.acidity)) +
coord_cartesian(
xlim=c(quantile(wine$alcohol,.05),quantile(wine$alcohol,.95)),
ylim=c(quantile(wine$volatile.acidity,.05),quantile(wine$volatile.acidity,.95))
) +
geom_jitter(alpha=.5, aes(size=quality.cut, color=quality.cut))
geom_vline(xintercept = mean(wine$alcohol), linetype='dashed', color='red', alpha=.5) +
geom_hline(yintercept = mean(wine$volatile.acidity), linetype='dashed', color='red', alpha=.5) +
ggtitle("Wine Quality: Volatile.Acidity v/s Alcohol")
ggplot(data=wine, aes(x=alcohol, y=volatile.acidity)) +
coord_cartesian(
xlim=c(quantile(wine$alcohol,.05),quantile(wine$alcohol,.95)),
ylim=c(quantile(wine$volatile.acidity,.05),quantile(wine$volatile.acidity,.95))
) +
geom_jitter(alpha=.5, aes(size=quality.cut, color=quality.cut))
geom_vline(xintercept = mean(wine$alcohol), linetype='dash', color='red', alpha=.5) +
geom_hline(yintercept = mean(wine$volatile.acidity), linetype='dash', color='red', alpha=.5) +
ggtitle("Wine Quality: Volatile.Acidity v/s Alcohol")
ggplot(data=wine, aes(x=alcohol, y=volatile.acidity)) +
coord_cartesian(
xlim=c(quantile(wine$alcohol,.05),quantile(wine$alcohol,.95)),
ylim=c(quantile(wine$volatile.acidity,.05),quantile(wine$volatile.acidity,.95))
) +
geom_jitter(alpha=.5, aes(size=quality.cut, color=quality.cut)) +
geom_vline(xintercept = mean(wine$alcohol), linetype='dashed', color='red', alpha=.5) +
geom_hline(yintercept = mean(wine$volatile.acidity), linetype='dashed', color='red', alpha=.5) +
ggtitle("Wine Quality: Volatile.Acidity v/s Alcohol")
ntile(wine$alcohol,.01),quantile(wine$alcohol,.99)),
ylim=c(quantile(wine$volatile.acidity,.01),quantile(wine$volatile.acidity,.99))
) +
geom_jitter(alpha=.5, aes(size=quality.cut, color=quality.cut)) +
geom_vline(xintercept = mean(wine$alcohol), linetype='dashed', color='red', alpha=.5) +
geom_hline(yintercept = mean(wine$volatile.acidity), linetype='dashed', color='red', alpha=.5) +
ggtitle("Wine Quality: Volatile.Acidity v/s Alcohol")
ggplot(data=wine, aes(x=alcohol, y=volatile.acidity)) +
coord_cartesian(
xlim=c(quantile(wine$alcohol,.01),quantile(wine$alcohol,.99)),
ylim=c(quantile(wine$volatile.acidity,.01),quantile(wine$volatile.acidity,.99))
) +
geom_jitter(alpha=.5, aes(size=quality.cut, color=quality.cut)) +
geom_vline(xintercept = mean(wine$alcohol), linetype='dashed', color='red', alpha=.5) +
geom_hline(yintercept = mean(wine$volatile.acidity), linetype='dashed', color='red', alpha=.5) +
ggtitle("Wine Quality: Volatile.Acidity v/s Alcohol")
ggplot(data=wine, aes(x=alcohol, y=volatile.acidity)) +
coord_cartesian(
xlim=c(quantile(wine$alcohol,.01),quantile(wine$alcohol,.99)),
ylim=c(quantile(wine$volatile.acidity,.01),quantile(wine$volatile.acidity,.99))
) +
geom_jitter(alpha=.5, aes(size=quality.cut, color=quality.cut)) +
geom_vline(xintercept = quantile(wine$alcohol, 0.25), linetype='dashed', color='red', alpha=.5) +
geom_hline(yintercept = quantile(wine$volatile.acidity, 0.75), linetype='dashed', color='red', alpha=.5) +
ggtitle("Wine Quality: Volatile.Acidity v/s Alcohol")
ggplot(data=wine, aes(x=alcohol, y=volatile.acidity)) +
coord_cartesian(
xlim=c(quantile(wine$alcohol,.01),quantile(wine$alcohol,.99)),
ylim=c(quantile(wine$volatile.acidity,.01),quantile(wine$volatile.acidity,.99))
) +
geom_jitter(alpha=.5, aes(size=quality.cut, color=quality.cut)) +
geom_vline(xintercept = quantile(wine$alcohol, 0.4), linetype='dashed', color='red', alpha=.5) +
geom_hline(yintercept = quantile(wine$volatile.acidity, 0.8), linetype='dashed', color='red', alpha=.5) +
ggtitle("Wine Quality: Volatile.Acidity v/s Alcohol")
ggplot(data=wine, aes(x=alcohol, y=volatile.acidity)) +
coord_cartesian(
xlim=c(quantile(wine$alcohol,.01),quantile(wine$alcohol,.99)),
ylim=c(quantile(wine$volatile.acidity,.01),quantile(wine$volatile.acidity,.99))
) +
geom_jitter(alpha=.5, aes(size=quality.cut, color=quality.cut)) +
geom_vline(xintercept = quantile(wine$alcohol, 0.5), linetype='dashed', color='red', alpha=.5) +
geom_hline(yintercept = quantile(wine$volatile.acidity, 0.9), linetype='dashed', color='red', alpha=.5) +
ggtitle("Wine Quality: Volatile.Acidity v/s Alcohol")
ggplot(data=wine, aes(x=alcohol, y=volatile.acidity)) +
coord_cartesian(
xlim=c(quantile(wine$alcohol,.01),quantile(wine$alcohol,.99)),
ylim=c(quantile(wine$volatile.acidity,.01),quantile(wine$volatile.acidity,.99))
) +
geom_jitter(alpha=.5, aes(size=quality.cut, color=quality.cut)) +
geom_vline(xintercept = 11, linetype='dashed', color='red', alpha=.5) +
geom_hline(yintercept = 0.45, linetype='dashed', color='red', alpha=.5) +
ggtitle("Wine Quality: Volatile.Acidity v/s Alcohol")
ggplot(data=wine, aes(x=alcohol, y=volatile.acidity)) +
coord_cartesian(
xlim=c(quantile(wine$alcohol,.01),quantile(wine$alcohol,.99)),
ylim=c(quantile(wine$volatile.acidity,.01),quantile(wine$volatile.acidity,.99))
) +
geom_jitter(alpha=.5, aes(size=quality.cut, color=quality.cut)) +
geom_vline(xintercept = 10.5, linetype='dashed', color='red', alpha=.5) +
geom_hline(yintercept = 0.45, linetype='dashed', color='red', alpha=.5) +
ggtitle("Wine Quality: Volatile.Acidity v/s Alcohol")
ggplot(data=wine, aes(x=alcohol, y=volatile.acidity)) +
coord_cartesian(
xlim=c(quantile(wine$alcohol,.01),quantile(wine$alcohol,.99)),
ylim=c(quantile(wine$volatile.acidity,.01),quantile(wine$volatile.acidity,.99))
) +
geom_jitter(alpha=.5, aes(size=quality.cut, color=quality.cut)) +
geom_vline(xintercept = 10.75, linetype='dashed', color='red', alpha=.5) +
geom_hline(yintercept = 0.45, linetype='dashed', color='red', alpha=.5) +
ggtitle("Wine Quality: Volatile.Acidity v/s Alcohol")
ggplot(data=wine, aes(x=alcohol, y=volatile.acidity)) +
coord_cartesian(
xlim=c(quantile(wine$alcohol,.01),quantile(wine$alcohol,.99)),
ylim=c(quantile(wine$volatile.acidity,.01),quantile(wine$volatile.acidity,.99))
) +
geom_jitter(alpha=.5, aes(size=quality.cut, color=quality.cut)) +
geom_vline(xintercept = 10.75, linetype='dashed', color='red', alpha=.5) +
geom_hline(yintercept = 0.5, linetype='dashed', color='red', alpha=.5) +
ggtitle("Wine Quality: Volatile.Acidity v/s Alcohol")
ggplot(data=wine, aes(x=alcohol, y=volatile.acidity)) +
coord_cartesian(
xlim=c(quantile(wine$alcohol,.01),quantile(wine$alcohol,.99)),
ylim=c(quantile(wine$volatile.acidity,.01),quantile(wine$volatile.acidity,.99))
) +
geom_jitter(alpha=.5, aes(size=quality, color=quality.cut)) +
geom_vline(xintercept = 10.75, linetype='dashed', color='red', alpha=.5) +
geom_hline(yintercept = 0.5, linetype='dashed', color='red', alpha=.5) +
ggtitle("Wine Quality: Volatile.Acidity v/s Alcohol")
ggplot(data=wine, aes(x=alcohol, y=volatile.acidity)) +
geom_jitter(alpha=.5, aes(size=quality, color=quality.cut)) +
coord_cartesian(
xlim=c(quantile(wine$alcohol,.01),quantile(wine$alcohol,.99)),
ylim=c(quantile(wine$volatile.acidity,.01),quantile(wine$volatile.acidity,.99)) ) +
geom_vline(xintercept = 10.75, linetype='dashed', color='yellow', alpha=.5) +
geom_hline(yintercept = 0.5, linetype='dashed', color='yellow', alpha=.5) +
ggtitle("Wine Quality: Volatile.Acidity v/s Alcohol")
ggplot(data=wine, aes(x=alcohol, y=volatile.acidity)) +
geom_jitter(alpha=.5, aes(size=quality, color=quality.cut)) +
coord_cartesian(
xlim=c(quantile(wine$alcohol,.01),quantile(wine$alcohol,.99)),
ylim=c(quantile(wine$volatile.acidity,.01),quantile(wine$volatile.acidity,.99)) ) +
geom_vline(xintercept = 10.75, linetype='dashed', color='brown', alpha=.5) +
geom_hline(yintercept = 0.5, linetype='dashed', color='brown', alpha=.5) +
ggtitle("Wine Quality: Volatile.Acidity v/s Alcohol")
ggsave("wine_quality_summary_by_volatile_acidity_and_alcohol.jpg")
ggplot(data=wine, aes(x=alcohol, y=volatile.acidity, size=quality, color=quality.cut)) +
geom_jitter(alpha=0.5) + coord_cartesian(
xlim=c(quantile(wine$alcohol,.01),quantile(wine$alcohol,.99)),
ylim=c(quantile(wine$volatile.acidity,.01),quantile(wine$volatile.acidity,.99)) ) +
geom_vline(xintercept = 10.75, linetype='dashed', color='brown', alpha=0.5) +
geom_hline(yintercept = 0.5, linetype='dashed', color='brown', alpha=0.5) +
ggtitle("Wine Quality: Volatile.Acidity v/s Alcohol")
savehistory("~/GitHub/EDA/history-sep26-2.R")
m.predict <- predict(m3)
plot(m.predict, wine$quality)
abline(m3)
?abline
plot(wine)
plot(wine$alcohol, wine$volatile.acidity)
abline(m3)
?abline
abline(coef(m3)[1:2])
abline(coef(m3)[1:3])
coef(m3)
coef(m3)[1:3]
abline(coef(m3)[2:3])
plot(m3, which=1)
plot(m3, which=1)
qplot(.fitted, .stdresid, data = fortify(m3, wine),
colour = quality.cut)
ggplotRegression(m3)
plot(m3$res)
summary(lm(abs(m3$res) ~ m3$fit))
truehist(residuals(m4), h = 0.25, col="slategray3")
truehist(residuals(m3), h = 0.25, col="slategray3")
truehist(residuals(m3), h = 0.25, col="slategray3")
par(mfrow=c(1,1))
pred.val <- round(fitted(m3))
plot(pred.val, residuals(m3))
influencePlot(m3,  id.method="identify", main="Influence Plot", sub="Circle size is proportial to Cook's Distance" )
m4 <- lm(formula = quality ~ alcohol + volatile.acidity + pH + residula.sugar + free.sulphur.dioxide + sulphates + chlorides, data = wine)
m4 <- lm(formula = quality ~ alcohol + volatile.acidity + pH + residual.sugar + free.sulphur.dioxide + sulphates + chlorides, data = wine)
m4 <- lm(formula = quality ~ alcohol + volatile.acidity + pH + residual.sugar + free.sulfur.dioxide + sulfates + chlorides, data = wine)
m4 <- lm(formula = quality ~ alcohol + volatile.acidity + pH + residual.sugar + free.sulfur.dioxide + sulphates + chlorides, data = wine)
summary(m4)
m4 <- lm(formula = quality ~ poly(alcohol,2) + poly(volatile.acidity,2) + poly(pH,2) + residual.sugar + free.sulfur.dioxide + sulphates + chlorides, data = wine)
summary(m4)
m4 <- lm(formula = quality ~ poly(alcohol,2) + poly(volatile.acidity,2) + poly(pH,2), data = wine)
summary(m4)
m4 <- lm(formula = quality ~ poly(alcohol,3) + poly(volatile.acidity,3) + poly(pH,3), data = wine)
summary(m4)
m4 <- lm(formula = quality ~ poly(alcohol,4) + poly(volatile.acidity,4) + poly(pH,4), data = wine)
summary(m4)
m4 <- lm(formula = quality ~ poly(alcohol,0.5) + poly(volatile.acidity,0.5) + poly(pH,0.5), data = wine)
m4 <- lm(formula = quality ~ ((alcohol^2)) + I(volatile.acidity^2) + I(pH^2), data = wine)
summary(m4)
m4 <- lm(formula = quality ~ I(alcohol^2) + I(volatile.acidity^2) + I(pH^2), data = wine)
summary(m4)
m4 <- lm(formula = quality ~ I(alcohol^3) + I(volatile.acidity^3) + I(pH^3), data = wine)
summary(m4)
cor.plot(cor(wine))
load(psych)
library(psych)
cor.plot(cor(wine))
cor.plot(cor(wine[1:13]))
lowerCor(wine)
lowerCor(wine[2:13])
savehistory("~/GitHub/EDA/history-sep27.R")
