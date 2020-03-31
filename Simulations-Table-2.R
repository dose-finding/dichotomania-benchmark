##### This code can be used to reproduce the result in 
#####
##### Table 2 
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
sigma<-36.4^2                                      ##### Variance

##### Running Simulations
#####
##### Run Scenario-by-Scenario

######################
##### Scenario 1 #####
######################
mu<-c(10,20,30,40,50,60) # (~10 seconds each computation)
######################

# B – Continuous
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=61,nsims=nsims,target.level=target.level, target.probability=target.probability)  
# Check that for n=61-1, the Probability of Correct Selections (PCS) is below 80%
# B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=60,nsims=nsims,target.level=target.level,target.probability=target.probability)   
# B.Cont.check

# B – Binary
B.Binary.1<-binary.benchmark.normal(mu=mu,sigma=sigma,n=61,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Binary.2<-binary.benchmark.normal(mu=mu,sigma=sigma,n=78,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=78-1, the PCS is below 80%
# B.Binary.2.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=77,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# B.Binary.2.check

rbind(B.Cont,B.Binary.1,B.Binary.2)
round(61/78*100,1)


######################
##### Scenario 2 #####
######################
mu<-c(0,10,20,30,40,50) # (~15 seconds each computation)
######################

# B – Continuous
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=104,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=104-1, the PCS is below 80%
# B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=103,nsims=nsims,target.level=target.level,target.probability=target.probability)
# B.Cont.check

# B – Binary
B.Binary.1<-binary.benchmark.normal(mu=mu,sigma=sigma,n=104,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Binary.2<-binary.benchmark.normal(mu=mu,sigma=sigma,n=143,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=143-1, the PCS is below 80%
# B.Binary.2.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=142,nsims=nsims,target.level=target.level,target.probability=target.probability)
# B.Binary.2.check

rbind(B.Cont,B.Binary.1,B.Binary.2)
round(104/143*100,1)



######################
##### Scenario 3 #####
######################
mu<-c(-10,0,10,20,30,40) # (~15 seconds each computation)
######################

# B – Continuous
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=104,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=104-1, the PCS is below 80%
# B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=103,nsims=nsims,target.level=target.level,target.probability=target.probability)
# B.Cont.check

# B – Binary
B.Binary.1<-binary.benchmark.normal(mu=mu,sigma=sigma,n=104,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Binary.2<-binary.benchmark.normal(mu=mu,sigma=sigma,n=143,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=143-1, the PCS is below 80%
# B.Binary.2.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=142,nsims=nsims,target.level=target.level,target.probability=target.probability)
# B.Binary.2.check

rbind(B.Cont,B.Binary.1,B.Binary.2)
round(104/143*100,1)


######################
##### Scenario 4 #####
######################
mu<-c(-20,-10,0,10,20,30) # (~15 seconds each computation)
######################

# B – Continuous
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=104,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=104-1, the PCS is below 80%
# B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=103,nsims=nsims,target.level=target.level,target.probability=target.probability)
# B.Cont.check

# B – Binary
B.Binary.1<-binary.benchmark.normal(mu=mu,sigma=sigma,n=104,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Binary.2<-binary.benchmark.normal(mu=mu,sigma=sigma,n=143,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=143-1, the PCS is below 80%
# B.Binary.2.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=142,nsims=nsims,target.level=target.level,target.probability=target.probability)
# B.Binary.2.check

rbind(B.Cont,B.Binary.1,B.Binary.2)
round(104/143*100,1)


######################
##### Scenario 5 #####
######################
mu<-c(-30,-20,-10,0,10,20) # (~15 seconds each computation)
######################

# B – Continuous
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=104,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=104-1, the PCS is below 80%
# B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=103,nsims=nsims,target.level=target.level,target.probability=target.probability)
# B.Cont.check

# B – Binary
B.Binary.1<-binary.benchmark.normal(mu=mu,sigma=sigma,n=104,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Binary.2<-binary.benchmark.normal(mu=mu,sigma=sigma,n=143,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=143-1, the PCS is below 80%
# B.Binary.2.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=142,nsims=nsims,target.level=target.level,target.probability=target.probability)
# B.Binary.2.check

rbind(B.Cont,B.Binary.1,B.Binary.2)
round(104/143*100,1)


######################
##### Scenario 6 #####
######################
mu<-c(-40,-30,-20,-10,0,10) # (~7 seconds each computation)
######################

# B – Continuous
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=32,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=32-1, the PCS is below 80%
# B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=31,nsims=nsims,target.level=target.level,target.probability=target.probability)
# B.Cont.check

# B – Binary
B.Binary.1<-binary.benchmark.normal(mu=mu,sigma=sigma,n=32,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Binary.2<-binary.benchmark.normal(mu=mu,sigma=sigma,n=51,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=51-1, the PCS is below 80%
# B.Binary.2.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=50,nsims=nsims,target.level=target.level,target.probability=target.probability)
# B.Binary.2.check

rbind(B.Cont,B.Binary.1,B.Binary.2)
round(32/51*100,1)

