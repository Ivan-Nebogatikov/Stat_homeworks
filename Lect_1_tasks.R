#install.packages("e1071")
#install.packages("chi")
#install.packages("purrr")
library(e1071)
library(chi)
library(purrr)

N <- 5000
x <- rbinom(N, 100, 0.4)
print(x)

print(mean(x))
print(var(x))

skewness(x) # http://www.r-tutor.com/elementary-statistics/numerical-measures/skewness
kurtosis(x) # http://www.r-tutor.com/elementary-statistics/numerical-measures/kurtosis

t <- table(x)
print(t)
n <- names(t)
p <- c()
for (i in 1:length(n)){
  p[i] <- pbinom(as.numeric(n[i]), 100, 0.4)
  if (i > 1){
    p[i] <- p[i] - pbinom(as.numeric(n[i - 1]), 100, 0.4)
  }
}
print(p)
print(sum(p))
chisq.test(t, p = p, rescale.p = TRUE)
qchi(0.95, 28)
