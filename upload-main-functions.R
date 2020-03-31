##### This code can be used to implement the continuous and
##### binary benchmarks for Phase 2 Dose-Ranging studies; and
##### to reproduce the the result in 
##### the paper
##### ``Using a Dose-Finding Benchmark to Quantify #####
#####   the Loss Incurred by Dichotomisation       #####
#####   in Phase II Dose-RangingStudies''          #####
#####
#####   by
#####
#####   Mozgunov, Jaki and Paoletti (2020)         #####

cont.benchmark.normal<-function(mu,sigma,n,nsims,target.level,target.probability,seed=100){
  S<-nsims
  # creating matrices to store outcomes
  response<-mat.or.vec(n,length(mu))
  recom<-mat.or.vec(S,length(mu))
  prob<-var<-mat.or.vec(1,length(mu))
  
  # running the continuous benchmark
  set.seed(seed)
  for(z in 1:S){
    # Generating vectors of the complete information under Normal distribution
    for(j in 1:n){
      response[j,]<-sqrt(sigma)*qnorm(runif(1,0,1))+mu
    }
    # finding the mean response at each dose
    est<-colMeans(response)
    # computing the variance at each dose, and computing the pobability that response is above target.level $\psi$
    for (i in 1:length(mu)){
      var[i]<-var(response[,i])
      prob[i]<-pnorm(target.level, mean = est[i], sd= sqrt(var[i]),lower.tail=F)
    }
    # Choose the dose corresponding to the probability of response closest to the target probability
    target.dose<-which.min(abs(prob-target.probability))
    recom[z,target.dose]<-1
  }
   # results printing
  results<-colMeans(recom)
  return(round(100*results,1))
}



binary.benchmark.normal<-function(mu,sigma,n,nsims,target.level,target.probability,seed=100){
  S<-nsims
  # creating matrices to store outcomes
  response<-response.binary<-mat.or.vec(n,length(mu))
  recom<-mat.or.vec(S,length(mu))
  prob<-var<-mat.or.vec(1,length(mu))
  
  # running the binary benchmark
  set.seed(seed)
  for(z in 1:S){
    # Generating vectors of the complete information under Normal distribution
    for(j in 1:n){
      response[j,]<-sqrt(sigma)*qnorm(runif(1,0,1))+mu
      response.binary[j,]<-as.numeric(response[j,]>target.level)
    }    
    # Computing the probabilities of response at each dose level
    est<-colMeans(response.binary)
    # Choose the dose corresponding to the probability of response closest to the target probability
    target.dose<-which.min(abs(est-target.probability))
    recom[z,target.dose]<-1
  }
  # results printing
  results<-colMeans(recom)
  return(round(100*results,1))
}



cont.benchmark.student<-function(mu,sigma,n,nsims,DF,target.level,target.probability,seed=100){
  S<-nsims
  
  # creating matrices to store outcomes
  response<-mat.or.vec(n,length(mu))
  recom<-mat.or.vec(S,length(mu))
  prob<-var<-mat.or.vec(1,6)
  
  # running the continuous benchmark
  set.seed(seed)
  for(z in 1:S){
    # Generating vectors of the complete information under Non-Standard Student's distribution
    for(j in 1:n){
      response[j,]<-sqrt(sigma)*qt(runif(1,0,1),df=DF)+mu
    }    
    # finding the mean response at each dose
    est<-colMeans(response)
    # computing the variance at each dose, and computing the pobability that response is above target.level $\psi$
    # note that the benchmark still uses the normal distribution as the robustnes of the benchmark to the normality assumption is of interset
    for (i in 1:length(mu)){
      var[i]<-var(response[,i])
      prob[i]<-pnorm(target.level, mean = est[i], sd= sqrt(var[i]),lower.tail=F)
    }
    # Choose the dose corresponding to the probability of response closest to the target probability
    target.dose<-which.min(abs(prob-target.probability))
    recom[z,target.dose]<-1
  }
  # results printing
  results<-colMeans(recom)
  return(round(100*results,1))
}



binary.benchmark.student<-function(mu,sigma,n,nsims,DF,target.level,target.probability,seed=100){
  S<-nsims
  
  # creating matrices to store outcomes
  response<-response.binary<-mat.or.vec(n,length(mu))
  recom<-mat.or.vec(S,length(mu))
  prob<-var<-mat.or.vec(1,length(mu))
  
  # running the binary benchmark
  set.seed(seed)
  for(z in 1:S){
    # Generating vectors of the complete information under Non-Standard Student's distribution
    for(j in 1:n){
      response[j,]<-sqrt(sigma)*qt(runif(1,0,1),df=DF)+mu
      response.binary[j,]<-as.numeric(response[j,]>target.level)
    }    
    # Computing the probabilities of response at each dose level
    est<-colMeans(response.binary)
    # Choose the dose corresponding to the probability of response closest to the target probability
    target.dose<-which.min(abs(est-target.probability))
    recom[z,target.dose]<-1
  }
  # results printing
  results<-colMeans(recom)
  return(round(100*results,1))
}

# Defining the Emax model function
emax.model<-function(d,Emax,ED,lambda){
  y<-Emax*(d^lambda)/(d^lambda+ED^lambda)
  return(y)
}
