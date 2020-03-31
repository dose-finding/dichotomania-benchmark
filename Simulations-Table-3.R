##### This code can be used to reproduce the result in 
#####
##### Table 3 
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
mu<-c(-20,-10,0,10,20,27.5)                        ##### Scenario 
target.probability<-0.3                            ##### Target probabiltiy for the tumour reduction $\gamma$
nsims<-40000                                       ##### Number of SImulations
sigma<-36.4^2                                      ##### Variance

##### Running Simulations
#####
##### Run Scenario-by-Scenario

######################
##### Scenario 1 ##### (~10 seconds each computation)
######################
target.level<-0                                    ##### Target value of the tumour reduction $\psi$
######################

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
##### Scenario 2 ##### (~15 seconds each computation)
######################
target.level<-10                                    ##### Target value of the tumour reduction $\psi$
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
##### Scenario 3 ##### (~15 seconds each computation)
######################
target.level<-20                                    ##### Target value of the tumour reduction $\psi$
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
##### Scenario 4 ##### (~15 seconds each computation)
######################
target.level<-30                                    ##### Target value of the tumour reduction $\psi$
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
##### Scenario 5 ##### (~30 seconds each computation)
######################
target.level<-40                                    ##### Target value of the tumour reduction $\psi$
######################

# B – Continuous
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=163,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=163-1, the PCS is below 80%
# B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=162,nsims=nsims,target.level=target.level,target.probability=target.probability)
# B.Cont.check

# B – Binary
B.Binary.1<-binary.benchmark.normal(mu=mu,sigma=sigma,n=163,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Binary.2<-binary.benchmark.normal(mu=mu,sigma=sigma,n=225,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=225-1, the PCS is below 80%
# B.Binary.2.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=224,nsims=nsims,target.level=target.level,target.probability=target.probability)
# B.Binary.2.check

rbind(B.Cont,B.Binary.1,B.Binary.2)
round(163/225*100,1)



######################
##### Scenario 6 ##### (~6 seconds each computation)
######################
target.level<-50                                    ##### Target value of the tumour reduction $\psi$
######################

# B – Continuous
B.Cont<-cont.benchmark.normal(mu=mu,sigma=sigma,n=21,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=21-1, the PCS is below 80%
# B.Cont.check<-cont.benchmark.normal(mu=mu,sigma=sigma,n=20,nsims=nsims,target.level=target.level,target.probability=target.probability)
# B.Cont.check

# B – Binary
B.Binary.1<-binary.benchmark.normal(mu=mu,sigma=sigma,n=21,nsims=nsims,target.level=target.level,target.probability=target.probability) 
B.Binary.2<-binary.benchmark.normal(mu=mu,sigma=sigma,n=46,nsims=nsims,target.level=target.level,target.probability=target.probability) 
# Check that for n=46-1, the PCS is below 80%
# B.Binary.2.check<-binary.benchmark.normal(mu=mu,sigma=sigma,n=45,nsims=nsims,target.level=target.level,target.probability=target.probability)
# B.Binary.2.check

rbind(B.Cont,B.Binary.1,B.Binary.2)
round(21/46*100,1)

