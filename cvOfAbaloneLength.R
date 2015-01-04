meanLength <- mean(abalone$Length)
model <- lm(Whole.weight ~ Length + Sex, data=abalone)
x <- 1:3
cv <- function(x, na.rm=FALSE) {
     sd(x, na.rm=na.rm)/mean(x, na.rm=na.rm)
}                             