library(ggplot2)
data("mtcars")

head(mtcars)
str(mtcars)

mtcars$am <- factor(mtcars$am)

tapply(mtcars$mpg,mtcars$am,mean)
g <- ggplot(data = mtcars, aes(x = am, y = mpg))
g + geom_boxplot()

fit <- lm(mpg~.,data = mtcars)
summary(fit)

fit2 <- lm(mpg~am,data = mtcars)
summary(fit2)

plot(fit2)