##### This code can be used to reproduce the result for 
##### the Benchmark given in
#####
##### Table 1 
#####
#####   of the paper
##### ``Using a Dose-Finding Benchmark to Quantify #####
#####   the Loss Incurred by Dichotomisation       #####
#####   in Phase II Dose-RangingStudies''          #####
#####
#####   by
#####
#####   Mozgunov, Jaki and Paoletti (2020)         #####
#####

# Doses
doses<-c(0,12.5,25,37.5,50,62.5,75,87.5,100)
# Assumed Maximum Effect
max.effect<-0.15
# Assumed Minimum Effect
min.effect<-0.00
# Variance of the Endpoint
sigma<-0.34^2
# Sample Size
n<-300
# Number of Simulations
nsims<-40000


# Defining Scenario in terms of the Emax model
# Scenario 1
mu<-emax.model(d=doses,Emax=0.15,ED=10,lambda=1)
# Scenario 2
# mu<-emax.model(d=doses,Emax=0.15,ED=35,lambda=4)  

# Targeting ED50
target<-(max.effect+min.effect)*0.5

#Defining matricies to store outcomes
response<-mat.or.vec(n,length(mu))
recom<-mat.or.vec(nsims,length(mu))
recom.opt<-mat.or.vec(nsims,length(mu))
# running the continuous benchmark
set.seed(100)
for(z in 1:nsims){
  for(j in 1:n){response[j,]<-sqrt(sigma)*qnorm(runif(1,0,1))+mu}
  est<-colMeans(response)
  dose<-which.min(abs(est-target))
  recom[z,dose]<-1}
result.ED50<-colMeans(recom)


# Targeting ED90
target<-(max.effect+min.effect)*0.90

#Defining matricies to store outcomes
response<-mat.or.vec(n,length(mu))
recom<-mat.or.vec(nsims,length(mu))
recom.opt<-mat.or.vec(nsims,length(mu))
# running the continuous benchmark
set.seed(100)
for(z in 1:nsims){
  for(j in 1:n){response[j,]<-sqrt(sigma)*qnorm(runif(1,0,1))+mu}
  est<-colMeans(response)
  dose<-which.min(abs(est-target))
  recom[z,dose]<-1}
result.ED90<-colMeans(recom)

# All Doses between ED25 and ED75 are deemed as correct selection for ED50
round(sum(result.ED50[which(mu<=(max.effect+min.effect)*0.75 & mu >=(max.effect+min.effect)*0.25)]),2)
# 0.93 for Scenario 1 
# 0.73 for Scenario 2

# All Doses between ED85 and ED95 are deemed as correct selection for ED90
round(sum(result.ED90[which(mu<=(max.effect+min.effect)*0.95 & mu >=(max.effect+min.effect)*0.85)]),2)
# 0.65 for Scenario 1
# 0.22 for Scenario 2

