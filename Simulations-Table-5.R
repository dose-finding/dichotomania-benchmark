##### This code can be used to reproduce the results in 
#####
##### Table 5 
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
###### Column 1 ###### 
#  Target Prob = 10% #
target.probability<-0.1 
######################
# Scenario with probability difference of 10%
mu<-c(-200,-150,-125,-16.64,-0.64,10.91)
# Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),2)
######################

B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=28,nsims=nsims,target.level=target.level, target.probability=target.probability)  
# Check that for n=28-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=27,nsims=nsims,target.level=target.level, target.probability=target.probability)  
B.Binary<-binary.benchmark.normal(mu=mu,sigma=sigma,n=46,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=46-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=45,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Cont             # 80% PCS is achieved for     n=28
B.Cont.check       # 80% PCS is NOT achieved for n=27
B.Binary           # 80% PCS is achieved for     n=46
B.Binary.check     # 80% PCS is NOT achieved for n=45
round(28/46*100,1)



######################
###### Column 2 ###### 
#  Target Prob = 30% #
target.probability<-0.3 
######################
# Scenario with probability difference of 10%
mu<-c(-125,-16.64,-0.64,10.91,20.78,30)
# Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),2)
######################

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
###### Column 3 ###### 
#  Target Prob = 50% #
target.probability<-0.5 
######################
# Scenario with probability difference of 10%
mu<-c(-0.64,10.91,20.78,30,39.22,49.09)
# Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),2)
######################

B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=104,nsims=nsims,target.level=target.level, target.probability=target.probability)  
# Check that for n=104-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=103,nsims=nsims,target.level=target.level, target.probability=target.probability)  
B.Binary<-binary.benchmark.normal(mu=mu,sigma=sigma,n=147,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=147-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=146,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Cont             # 80% PCS is achieved for     n=104
B.Cont.check       # 80% PCS is NOT achieved for n=103
B.Binary           # 80% PCS is achieved for     n=147
B.Binary.check     # 80% PCS is NOT achieved for n=146
round(104/147*100,1)



######################
###### Column 4 ###### 
#  Target Prob = 70% #
target.probability<-0.7 
######################
# Scenario with probability difference of 10%
mu<-c(20.78,30,39.22,49.09,60.64,76.65)
# Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),2)
######################

B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=89,nsims=nsims,target.level=target.level, target.probability=target.probability)  
# Check that for n=89-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=88,nsims=nsims,target.level=target.level, target.probability=target.probability)  
B.Binary<-binary.benchmark.normal(mu=mu,sigma=sigma,n=121,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=121-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=120,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Cont             # 80% PCS is achieved for     n=89
B.Cont.check       # 80% PCS is NOT achieved for n=88
B.Binary           # 80% PCS is achieved for     n=121
B.Binary.check     # 80% PCS is NOT achieved for n=120
round(89/121*100,1)


######################
###### Column 5 ###### 
#  Target Prob = 90% #
target.probability<-0.9 
######################
# Scenario with probability difference of 10%
mu<-c(39.22,49.09,60.64,76.65,200,200)
# Check Scenario
round(pnorm(target.level,mean=mu,sd=sqrt(sigma),lower.tail=F),2)
######################

B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=28,nsims=nsims,target.level=target.level, target.probability=target.probability)  
# Check that for n=28-1, the Probability of Correct Selections (PCS) is below 80%
B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=27,nsims=nsims,target.level=target.level, target.probability=target.probability)  
B.Binary<-binary.benchmark.normal(mu=mu,sigma=sigma,n=42,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=42-1, the Probability of Correct Selections (PCS) is below 80%
B.Binary.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=41,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Cont             # 80% PCS is achieved for     n=28
B.Cont.check       # 80% PCS is NOT achieved for n=27
B.Binary           # 80% PCS is achieved for     n=42
B.Binary.check     # 80% PCS is NOT achieved for n=41
round(28/42*100,1)