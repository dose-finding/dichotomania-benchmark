##### This code can be used to reproduce the result in 
#####
##### Table 4 
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
target.level<-30                                   ##### Target value of the tumour reduction $\psi$
target.probability<-0.3                            ##### Target probabiltiy for the tumour reduction $\gamma$
nsims<-40000                                       ##### Number of SImulations




######################
##### Scenario 1 ##### 
######################
sigma<-5^2                                         ##### Variance
######################

##### Scenario with probability differences of 2.5%
mu<-c(26.22,26.63,27.01,27.38,27.73,28.08)         
#### Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),3) 
######################

# ~ 240 Seconds Each Computation
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=1465,nsims=nsims,target.level=target.level, target.probability=target.probability)  
# Check that for n=1465-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=1464,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary<-binary.benchmark.normal(mu=mu,sigma=sigma,n=2166,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=2166-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=2165,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Cont             # 80% PCS is achieved for     n=1465
B.Cont.check       # 80% PCS is NOT achieved for n=1464
B.Binary           # 80% PCS is achieved for     n=2166
B.Binary.check     # 80% PCS is NOT achieved for n=2165
round(1464/2166*100,1)


######################
##### Scenario with probability differences of 5%
mu<-c(24.82,25.8,26.63,27.38,28.08,28.73)           
#### Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),3) 
######################

# ~ 60 Seconds Each Computation
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=357,nsims=nsims,target.level=target.level, target.probability=target.probability)  
# Check that for n=357-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=356,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary<-binary.benchmark.normal(mu=mu,sigma=sigma,n=515,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=515-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=514,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Cont             # 80% PCS is achieved for     n=357
B.Cont.check       # 80% PCS is NOT achieved for n=356
B.Binary           # 80% PCS is achieved for     n=515
B.Binary.check     # 80% PCS is NOT achieved for n=514
round(357/515*100,1)


######################
##### Scenario with probability differences of 10%
mu<-c(10,23.6,25.8,27.38,28.73,30)
#### Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),3) 
######################

# ~ 15 Seconds Each Computation
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=89,nsims=nsims,target.level=target.level, target.probability=target.probability)  
# Check that for n=89-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=88,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary<-binary.benchmark.normal(mu=mu,sigma=sigma,n=122,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=122-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=121,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Cont             # 80% PCS is achieved for     n=89
B.Cont.check       # 80% PCS is NOT achieved for n=88
B.Binary           # 80% PCS is achieved for     n=122
B.Binary.check     # 80% PCS is NOT achieved for n=121
round(89/122*100,1)


######################
##### Scenario with probability differences of 15%
mu<-c(0,0,24.82,27.38,29.37,31.27)
#### Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),3) 
######################

# ~8 Seconds Each Computation
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=38,nsims=nsims,target.level=target.level, target.probability=target.probability)  
# Check that for n=38-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=37,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary<-binary.benchmark.normal(mu=mu,sigma=sigma,n=50,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=50-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=49,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Cont             # 80% PCS is achieved for     n=38
B.Cont.check       # 80% PCS is NOT achieved for n=37
B.Binary           # 80% PCS is achieved for     n=50
B.Binary.check     # 80% PCS is NOT achieved for n=49
round(38/50*100,1)



######################
##### Scenario 2 ##### 
######################
sigma<-15^2                                        ##### Variance
######################


##### Scenario with probability differences of 2.5%
mu<-c(18.65,19.88,21.05,22.12,23.21,24.2) 
#### Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),3) 
######################

# ~ 240 Seconds Each Computation
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=1464,nsims=nsims,target.level=target.level, target.probability=target.probability)  
# Check that for n=1464-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=1463,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary<-binary.benchmark.normal(mu=mu,sigma=sigma,n=2158,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=2158-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=2157,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Cont             # 80% PCS is achieved for     n=1464
B.Cont.check       # 80% PCS is NOT achieved for n=1463
B.Binary           # 80% PCS is achieved for     n=2158
B.Binary.check     # 80% PCS is NOT achieved for n=2157
round(1464/2158*100,1)



##### Scenario with probability differences of 5%
mu<-c(14.43,17.4,19.88,22.12,24.2,26.2)
#### Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),3) 
######################

# ~ 60 Seconds Each Computation
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=366,nsims=nsims,target.level=target.level,target.probability=target.probability)  
# Check that for n=366-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=365,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary<-binary.benchmark.normal(mu=mu,sigma=sigma,n=525,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=525-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=524,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Cont             # 80% PCS is achieved for     n=366
B.Cont.check       # 80% PCS is NOT achieved for n=365
B.Binary           # 80% PCS is achieved for     n=525
B.Binary.check     # 80% PCS is NOT achieved for n=524
round(366/525*100,1)



##### Scenario with probability differences of 10%
mu<-c(-20,10.8,17.4,22.12,26.2,30) 
#### Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),3) 
######################

# ~ 15 Seconds Each Computation
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=89,nsims=nsims,target.level=target.level, target.probability=target.probability)  
# Check that for n=89-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=88,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary<-binary.benchmark.normal(mu=mu,sigma=sigma,n=122,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=122-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=121,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Cont             # 80% PCS is achieved for     n=89
B.Cont.check       # 80% PCS is NOT achieved for n=88
B.Binary           # 80% PCS is achieved for     n=122
B.Binary.check     # 80% PCS is NOT achieved for n=121
round(89/122*100,1)



##### Scenario with probability differences of 15%
mu<-c(-20,-20,14.43,22.12,28.1,33.8) 
#### Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),3) 
######################

# ~8 Seconds Each Computation
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=38,nsims=nsims,target.level=target.level, target.probability=target.probability)  
# Check that for n=38-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=37,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary<-binary.benchmark.normal(mu=mu,sigma=sigma,n=50,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=50-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=49,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Cont             # 80% PCS is achieved for     n=38
B.Cont.check       # 80% PCS is NOT achieved for n=37
B.Binary           # 80% PCS is achieved for     n=50
B.Binary.check     # 80% PCS is NOT achieved for n=49
round(38/50*100,1)



######################
##### Scenario 3 ##### 
######################
sigma<-35^2                                        ##### Variance
######################



##### Scenario with probability differences of 2.5%
mu<-c(0.5,6.4,9.1,11.6,14.1,16.5) 
#### Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),3) 
######################

# ~ 240 Seconds Each Computation
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=1482,nsims=nsims,target.level=target.level, target.probability=target.probability)  
# Check that for n=1482-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=1481,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary<-binary.benchmark.normal(mu=mu,sigma=sigma,n=2166,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=2166-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=2165,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Cont             # 80% PCS is achieved for     n=1482
B.Cont.check       # 80% PCS is NOT achieved for n=1481
B.Binary           # 80% PCS is achieved for     n=2166
B.Binary.check     # 80% PCS is NOT achieved for n=2155
round(1482/2166*100,1)



##### Scenario with probability differences of 5%
mu<-c(-6.3,0.5,6.4,11.6,16.5,21.1)
#### Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),3) 
######################

# ~ 60 Seconds Each Computation
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=365,nsims=nsims,target.level=target.level,target.probability=target.probability)  
# Check that for n=365-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=364,nsims=nsims,target.level=target.level,target.probability=target.probability)

B.Binary<-binary.benchmark.normal(mu=mu,sigma=sigma,n=522,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=522-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=521,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Cont             # 80% PCS is achieved for     n=365
B.Cont.check       # 80% PCS is NOT achieved for n=364
B.Binary           # 80% PCS is achieved for     n=522
B.Binary.check     # 80% PCS is NOT achieved for n=521
round(365/522*100,1)



##### Scenario with probability differences of 10%
mu<-c(-86,-14.9,0.5,11.6,21.1,30)
#### Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),3) 
######################

# ~ 15 Seconds Each Computation
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=88,nsims=nsims,target.level=target.level, target.probability=target.probability)  
# Check that for n=88-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=87,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary<-binary.benchmark.normal(mu=mu,sigma=sigma,n=120,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=122-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=119,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Cont             # 80% PCS is achieved for     n=88
B.Cont.check       # 80% PCS is NOT achieved for n=87
B.Binary           # 80% PCS is achieved for     n=120
B.Binary.check     # 80% PCS is NOT achieved for n=119
round(88/120*100,1)



##### Scenario with probability differences of 15%
mu<-c(-86,-86,-6.3,11.6,25.6,38.9)
#### Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),3) 
######################

# ~8 Seconds Each Computation
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=38,nsims=nsims,target.level=target.level, target.probability=target.probability)  
# Check that for n=38-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=37,nsims=nsims,target.level=target.level,target.probability=target.probability)
B.Binary<-binary.benchmark.normal(mu=mu,sigma=sigma,n=50,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=50-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=49,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Cont             # 80% PCS is achieved for     n=38
B.Cont.check       # 80% PCS is NOT achieved for n=37
B.Binary           # 80% PCS is achieved for     n=50
B.Binary.check     # 80% PCS is NOT achieved for n=49
round(38/50*100,1)