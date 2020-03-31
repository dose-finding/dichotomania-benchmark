##### This code can be used to reproduce the results in 
#####
##### Table 7 
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
nsims<-40000


######################
###### Scenario 1 ###### 
# Degrees of Freedom = 20 #
DF<-20
######################

#### Case 1
#  Target Prob = 10% #
target.probability<-0.10

mu<-c(-100,-100,-100,-18.1,-1.2,10.7) 
# check scenario
probi<-mat.or.vec(length(mu),1)
for (i in 1:length(probi)){
  x<-sqrt(sigma)*rt(10^7,df=DF)+mu[i]
  probi[i]<-sum(x>target.level)/length(x)}
round(probi,2)


B.Cont.student<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=28,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=28-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.student.check<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=27,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary.student<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=41,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=41-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.student.check<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=40,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Cont.student  # 80% PCS is achieved for n
B.Cont.student.check # 80% PCS is NOT achieved for n-1
B.Binary.student  # 80% PCS is achieved for n
B.Binary.student.check # 80% PCS is NOT achieved for n-1
round(28/41*100,1)


#### Case 2
#  Target Prob = 30% #
target.probability<-0.30

mu<-c(-100,-18.1,-1.2,10.7,20.7,30.0) 
# check scenario
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


#### Case 3
#  Target Prob = 50% #
target.probability<-0.50

mu<-c(-1.2,10.7,20.7,30.0,39.4,49.4) 
# check scenario
probi<-mat.or.vec(length(mu),1)
for (i in 1:length(probi)){
  x<-sqrt(sigma)*rt(10^7,df=DF)+mu[i]
  probi[i]<-sum(x>target.level)/length(x)}
round(probi,2)

B.Cont.student<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=113,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=113-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.student.check<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=112,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary.student<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=147,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=147-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.student.check<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=146,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Cont.student  # 80% PCS is achieved for n
B.Cont.student.check # 80% PCS is NOT achieved for n-1
B.Binary.student  # 80% PCS is achieved for n
B.Binary.student.check # 80% PCS is NOT achieved for n-1
round(113/147*100,1)


#### Case 4
#  Target Prob = 70% #
target.probability<-0.70

mu<-c(20.7,30.0,39.4,49.4,61.4,78.3) 
# check scenario
probi<-mat.or.vec(length(mu),1)
for (i in 1:length(probi)){
  x<-sqrt(sigma)*rt(10^7,df=DF)+mu[i]
  probi[i]<-sum(x>target.level)/length(x)}
round(probi,2)

B.Cont.student<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=96,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=96-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.student.check<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=95,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary.student<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=121,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=121-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.student.check<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=120,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Cont.student  # 80% PCS is achieved for n
B.Cont.student.check # 80% PCS is NOT achieved for n-1
B.Binary.student  # 80% PCS is achieved for n
B.Binary.student.check # 80% PCS is NOT achieved for n-1
round(96/121*100,1)


#### Case 5
#  Target Prob = 90% #
target.probability<-0.90

mu<-c(39.4,49.4,61.4,78.3,175,200) 
# check scenario
probi<-mat.or.vec(length(mu),1)
for (i in 1:length(probi)){
  x<-sqrt(sigma)*rt(10^7,df=DF)+mu[i]
  probi[i]<-sum(x>target.level)/length(x)}
round(probi,2)

B.Cont.student<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=28,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=28-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.student.check<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=27,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary.student<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=39,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=39-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.student.check<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=38,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Cont.student  # 80% PCS is achieved for n
B.Cont.student.check # 80% PCS is NOT achieved for n-1
B.Binary.student  # 80% PCS is achieved for n
B.Binary.student.check # 80% PCS is NOT achieved for n-1
round(28/39*100,1)



######################
###### Scenario 2 ###### 
# Degrees of Freedom = 20 #
DF<-10
######################

#### Case 1
#  Target Prob = 10% #
target.probability<-0.10

mu<-c(-200,-200,-130,-19.7,-1.9,10.3) 
# check scenario
probi<-mat.or.vec(length(mu),1)
for (i in 1:length(probi)){
  x<-sqrt(sigma)*rt(10^7,df=DF)+mu[i]
  probi[i]<-sum(x>target.level)/length(x)}
round(probi,2)


B.Cont.student<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=28,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=28-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.student.check<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=27,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary.student<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=41,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=41-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.student.check<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=40,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Cont.student  # 80% PCS is achieved for n
B.Cont.student.check # 80% PCS is NOT achieved for n-1
B.Binary.student  # 80% PCS is achieved for n
B.Binary.student.check # 80% PCS is NOT achieved for n-1
round(28/41*100,1)


#### Case 2
#  Target Prob = 30% #
target.probability<-0.30

mu<-c(-130,-19.7,-1.9,10.3,20.6,30.0) 
# check scenario
probi<-mat.or.vec(length(mu),1)
for (i in 1:length(probi)){
  x<-sqrt(sigma)*rt(10^7,df=DF)+mu[i]
  probi[i]<-sum(x>target.level)/length(x)}
round(probi,2)


B.Cont.student<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=114,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=114-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.student.check<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=113,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary.student<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=120,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=122-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.student.check<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=119,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Cont.student  # 80% PCS is achieved for n
B.Cont.student.check # 80% PCS is NOT achieved for n-1
B.Binary.student  # 80% PCS is achieved for n
B.Binary.student.check # 80% PCS is NOT achieved for n-1
round(114/120*100,1)



#### Case 3
#  Target Prob = 50% #
target.probability<-0.50

mu<-c(-1.9,10.3,20.6,30.0,39.5,49.7) 
# check scenario
probi<-mat.or.vec(length(mu),1)
for (i in 1:length(probi)){
  x<-sqrt(sigma)*rt(10^7,df=DF)+mu[i]
  probi[i]<-sum(x>target.level)/length(x)}
round(probi,2)


B.Cont.student<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=123,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=123-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.student.check<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=122,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary.student<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=147,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=147-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.student.check<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=146,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Cont.student  # 80% PCS is achieved for n
B.Cont.student.check # 80% PCS is NOT achieved for n-1
B.Binary.student  # 80% PCS is achieved for n
B.Binary.student.check # 80% PCS is NOT achieved for n-1
round(123/147*100,1)



#### Case 4
#  Target Prob = 70% #
target.probability<-0.70

mu<-c(20.6,30.0,39.5,49.7,62.0,80.0) 
probi<-mat.or.vec(length(mu),1)
for (i in 1:length(probi)){
  x<-sqrt(sigma)*rt(10^7,df=DF)+mu[i]
  probi[i]<-sum(x>target.level)/length(x)}
round(probi,2)

B.Cont.student<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=114,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=114-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.student.check<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=113,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary.student<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=121,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=121-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.student.check<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=120,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Cont.student  # 80% PCS is achieved for n
B.Cont.student.check # 80% PCS is NOT achieved for n-1
B.Binary.student  # 80% PCS is achieved for n
B.Binary.student.check # 80% PCS is NOT achieved for n-1
round(114/121*100,1)



#### Case 5
#  Target Prob = 90% #
target.probability<-0.90

mu<-c(39.5,49.7,62.0,80.0,200,250) 
probi<-mat.or.vec(length(mu),1)
for (i in 1:length(probi)){
  x<-sqrt(sigma)*rt(10^7,df=DF)+mu[i]
  probi[i]<-sum(x>target.level)/length(x)}
round(probi,2)


B.Cont.student<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=27,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=28-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.student.check<-cont.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=26,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary.student<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=39,nsims=nsims,target.level=target.level,target.probability=target.probability)
# Check that for n=39-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.student.check<-binary.benchmark.student(mu=mu,sigma=sigma,DF=DF,n=38,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Cont.student  # 80% PCS is achieved for n
B.Cont.student.check # 80% PCS is NOT achieved for n-1
B.Binary.student  # 80% PCS is achieved for n
B.Binary.student.check # 80% PCS is NOT achieved for n-1
round(27/39*100,1)
