##### This code can be used to reproduce the results in 
#####
##### Table 6 
#####
#####   of the paper
##### ``Using a Dose-Finding Benchmark to Quantify #####
#####   the Loss Incurred by Dichotomisation       #####
#####   in Phase II Dose-RangingStudies''          #####
#####
#####   by
#####
#####   Mozgunov, Jaki and Paoletti (2020)         #####

##### Setting
sigma<-36.4^2 
target.level<-30
target.probability<-0.3
nsims<-40000


######################
###### Column 1 ###### 
# Degrees of Freedom = Inf #
######################
mu<-c(-125,-16.64,-0.64,10.91,20.78,30)
# Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),2)
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=88,nsims=nsims,target.level=target.level, target.probability=target.probability)  
# Check that for n=88-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=87,nsims=nsims,target.level=target.level, target.probability=target.probability)  
B.Binary<-binary.benchmark.normal(mu=mu,sigma=sigma,n=120,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=120-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=119,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Cont             # 80% PCS is achieved for     n=88
B.Cont.check       # 80% PCS is NOT achieved for n=87
B.Binary           # 80% PCS is achieved for     n=120
B.Binary.check     # 80% PCS is NOT achieved for n=119
round(88/120*100,1)

######################
###### Column 2 ###### 
# Degrees of Freedom = 40 #
DF<-40
######################

mu<-c(-100,-17.4,-0.9,10.8,20.8,30.1) 
# Check probability scenario
probi<-mat.or.vec(length(mu),1)
for (i in 1:length(probi)){
  x<-sqrt(sigma)*rt(10^7,df=DF)+mu[i]
  probi[i]<-sum(x>target.level)/length(x)}
round(probi,2)

B.Cont.student<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=91,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=91-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.student.check<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=90,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary.student<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=120,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=120-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.student.check<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=119,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Cont.student  # 80% PCS is achieved for n
B.Cont.student.check # 80% PCS is NOT achieved for n-1
B.Binary.student  # 80% PCS is achieved for n
B.Binary.student.check # 80% PCS is NOT achieved for n-1
round(91/120*100,1)


######################
###### Column 3 ###### 
# Degrees of Freedom = 20 #
DF<-20
######################

mu<-c(-100,-18.1,-1.2,10.7,20.7,30.0) 
# Check probability scenario
probi<-mat.or.vec(length(mu),1)
for (i in 1:length(probi)){
  x<-sqrt(sigma)*rt(10^7,df=DF)+mu[i]
  probi[i]<-sum(x>target.level)/length(x)}
round(probi,2)

B.Cont.student<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=98,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=98-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.student.check<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=97,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary.student<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=122,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=122-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.student.check<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=121,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Cont.student  # 80% PCS is achieved for n
B.Cont.student.check # 80% PCS is NOT achieved for n-1
B.Binary.student  # 80% PCS is achieved for n
B.Binary.student.check # 80% PCS is NOT achieved for n-1
round(98/122*100,1)



######################
###### Column 4 ###### 
# Degrees of Freedom = 10 #
DF<-10
######################

mu<-c(-130,-19.7,-1.9,10.3,20.6,30.0) 
# Check probability scenario
probi<-mat.or.vec(length(mu),1)
for (i in 1:length(probi)){
  x<-sqrt(sigma)*rt(10^7,df=DF)+mu[i]
  probi[i]<-sum(x>target.level)/length(x)}
round(probi,2)

B.Cont.student<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=114,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=114-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.student.check<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=113,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary.student<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=120,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=120-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.student.check<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=119,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Cont.student  # 80% PCS is achieved for n
B.Cont.student.check # 80% PCS is NOT achieved for n-1
B.Binary.student  # 80% PCS is achieved for n
B.Binary.student.check # 80% PCS is NOT achieved for n-1
round(114/120*100,1)


######################
###### Column 5 ###### 
# Degrees of Freedom = 7.5 #
DF<-7.5
######################
mu<-c(-200,-21.0,-2.4,10.1,20.5,30.05) 
# Check probability scenario
probi<-mat.or.vec(length(mu),1)
for (i in 1:length(probi)){
  x<-sqrt(sigma)*rt(10^7,df=DF)+mu[i]
  probi[i]<-sum(x>target.level)/length(x)}
round(probi,2)

B.Cont.student<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=140,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=140-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.student.check<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=139,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary.student<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=120,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=120-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.student.check<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=119,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Cont.student  # 80% PCS is achieved for n
B.Cont.student.check  # 80% PCS is NOT achieved for n-1
B.Binary.student  # 80% PCS is achieved for n
B.Binary.student.check # 80% PCS is NOT achieved for n-1
round(140/120*100,1)
