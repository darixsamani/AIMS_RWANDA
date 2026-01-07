## question 1

P <- matrix(c(0.1,0.4,0.5,0.3,0.5,0.2,0.4,0.3,0.3), nrow =3, ncol =3, byrow = TRUE)
P
mpow <- function(P, n) {
  if (n == 0) diag(nrow(P))
  else if (n == 1) P
  else P %*% mpow(P, n - 1)
}

for (n in 1:20){
  P_n <-mpow(P,n)
  print(n)
  print(P_n)
}

## 1)
## after p^n = 14 we have the same value which means after the power n=14 we have the limiting distribution

print("limiting distribution is :")
print(mpow(P,14))

#2)

initialstate<-matrix(c(0.3,0.3,0.2),nrow=1,ncol=3,byrow=TRUE)
after_3_days <-initialstate%*%mpow(P,3)
print("distribution of the states afte 1 after 3 days: ")
print(after_3_days[1])

print("distribution of the states after 2 after 3 days: ")
print(after_3_days[2])

print("distribution of the states afte 3 after 3 days: ")
print(after_3_days[3])


## 3)
## this is (init*p^2)_1 *(p^2)_{32}*(p^3)_{13}

c <-  initialstate %*% (P %^% 2)[,1] %*% (P %^% 2)[4,3] %*% (P %^% 3)[2,4]
print(c)


##exercise 2
## B_2 + B_3 is equivalent to T_5
## P(1<B_2 + B_3<2) = 1- P(B_2+B_5<1) - P(B_2+B_5>2) = 1- P(B_2+B_5<1) - (1-P(B_2+B_5<2) =  P(B_2+B_5<2) - P(B_2+B_5<1) 
##
# Function to calculate P(T_a <= t) for Brownian motion
probability_T_a_leq_t <- function(a, t) {
  return(2 * pnorm(a / sqrt(t)) - 1)
}

print("result question 2")

print(probability_T_a_leq_t(5,1)-probability_T_a_leq_t(5,2))
      
## exercise 3

# P(Bt > 3)
#(P(X_2>0) =P(B_2-3>0) = P(B_2>3)
t <- 2  # for example, using t=1
prob <- 1 - pnorm(3, mean = 0, sd = sqrt(t))
prob

## exercise 4

# Function to calculate P(1<=T_a <= t) for Brownian motion
probability_T_a_leq_t <- function(a, t) {
  return(2 * pnorm(a / sqrt(t)) - 1)
}

# a) Calculate P(T_3 <= 6)
P_T3_leq_6 <- probability_T_a_leq_t(3, 6)
P_T3_leq_6  # Output the probability


# b) Find the median of T_2
# The median is the time t where P(T_3 <= t) = 0.75
# We use the inverse CDF (quantile) to find the median
median_T2 <- (3 / qnorm(0.75))^2  # From the property of Brownian motion for median
median_T2  # Output the median

