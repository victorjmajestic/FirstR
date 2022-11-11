
rm(list=ls())
setwd( "C:/Users/vmaj7/OneDrive/Desktop/Compsci/R/HW03 " )

#Question 1a
p0 = (4.5^0*exp(-4.5))/factorial(0)
p1 = (4.5^1*exp(-4.5))/factorial(1)
p2 = (4.5^2*exp(-4.5))/factorial(2)
p3 = (4.5^3*exp(-4.5))/factorial(3)
p0 + p1 + p2 + p3
ppois(3, 4.5, lower.tail = TRUE)

#Question 1b
p4 = (4.5^4*exp(-4.5))/factorial(4)
p5 = (4.5^5*exp(-4.5))/factorial(5)
p6 = (4.5^6*exp(-4.5))/factorial(6)
p3 + p4 + p5 + p6
ppois(6, 4.5, lower.tail = TRUE) - ppois(2, 4.5, lower.tail = TRUE)

#Question 2a
pnorm(6.3, 5, 3, lower.tail = TRUE, log.p = FALSE)

#Question 2b
pnorm(7.8, 5, 3, lower.tail = FALSE, log.p = FALSE)

#Question 2c
pnorm(7.8, 5, 3, lower.tail = TRUE, log.p = FALSE) - pnorm(1.6, 5, 3, lower.tail = TRUE, log.p = FALSE)

#Question 2d
qnorm(0.95, 5, 3, lower.tail = TRUE)

#Question 2e
lowerbound = qnorm(0.025, 5, 3, lower.tail = TRUE)
-lowerbound + 5

#Question 3a
set.seed(101)
sample = rnorm(10000, 7, 2)
mean(sample)
sd(sample)

#Question 3b
hist(sample)

#Question 6.1.12a
Rainfall <- read.csv("Ex6_1_12.csv", header=T)
mean(Rainfall$rainfall)
sd(Rainfall$rainfall)
range(Rainfall$rainfall)
max(Rainfall$rainfall)-min(Rainfall$rainfall)

#Question 6.1.12b
Unseeded <- Rainfall[1:26, 1]
mean(Unseeded)
sd(Unseeded)
range(Unseeded)
max(Unseeded) - min(Unseeded)

#Question 6.1.12c
Seeded <- Rainfall[27:52, 1]
mean(Seeded)
sd(Seeded)
range(Seeded)
max(Seeded) - min(Seeded)

#Question 6.2.4
Gasoline <- read.csv("Ex6_2_4.csv", header=T)
stem(Gasoline$OctRating)
quantile(Gasoline$OctRating, probs = c(0, 0.25, 0.5, 0.75, 1))

#Question 6.4.9
Drug <- read.csv("Ex6_4_9.csv", header = T)
HighDose <- Drug[1:21, 1]
Control <- Drug[22:82, 1]
boxplot(HighDose)
boxplot(Control)