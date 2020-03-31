The codes in this directory can be used to reproduce the results in the paper

# P. Mozgunov & T. Jaki & X. Paoletti
# "Using a Dose-Finding Benchmark to Quantify the Loss Incurred by Dichotomisation in Phase II Dose-Ranging Studies"


######
The file "main-functions-upload.R" implements the Continuous and Binary Benchmark and Two Type Distribution of The Endpoint: Normal and Student. This code should be run first as is.

######
The file "main-functions-upload-description.txt" containts the description of the parameters of the main functions.

######
The file "Simulations-Table-1.R" can be used to reproduce the operating
characteristics of the Continuous Benchmark design in scenarios 1--2 provided in Section 3
and Table 1. 

The code should be for each scenario individually to obtain the results. The required scenario
specification should be uncommented (the scenarios are clearly signposted)

######
The file "Simulations-Table-2.R" can be used to reproduce the operating
characteristics of the Continuous and Binary Benchmark designs in scenarios 1--6 provided in Table 2. 

The code should be run scenario-by-scenario to obtain the results.
(the scenarios are clearly signposted)


######
The file "Simulations-Table-3.R" can be used to reproduce the operating
characteristics of the Continuous and Binary Benchmark designs in scenarios 1--6
under various target values of the reduction in the tumour size provided in Table 3. 

The code should be run scenario-by-scenario to obtain the results.
(the scenarios are clearly signposted)


######
The file "Simulations-Table-4.R" can be used to reproduce the operating
characteristics of the Continuous and Binary Benchmark designs under various
values of $\sigma=5^2,15^2,35^2$ and various probability difference between
doses: 2.5%, 5%, 10%, and 15% provided in Table 4.


The code should be run case-by-case under each scenario to obtain the results.
(the cases and scenarios are clearly signposted). 

Under each case/scenario, the code computes the selection proportions under two sample sizes: smallest $n$ for which the 80% proportion of correct selections (PCS) is achieved,
and for $n-1$ for which the 80% PCS is not yet achieved. 


######
The file "Simulations-Table-5.R" can be used to reproduce the operating
characteristics of the Continuous and Binary Benchmark designs under various
target probability values $\gamma=0.1,0.3,0.5,0.7,0.9$ that are provided in Table 5.


The code should be run case-by-case under each scenario (called column)
to obtain the results (the cases and scenarios are clearly signposted). 

Under each case/scenario, the code computes the selection proportions under two sample sizes: smallest $n$ for which the 80% proportion of correct selections (PCS) is achieved,
and for $n-1$ for which the 80% PCS is not yet achieved. 



######
The file "Simulations-Table-6.R" can be used to reproduce the operating
characteristics of the Continuous and Binary Benchmark designs under various
target non-standard Student's distribution of the endpoint for various degrees 
of freedom $df=\Inf,40,20,10,7.5$ that are provided in Table 6.

The code should be run case-by-case under each scenario (called column)
to obtain the results (the cases and scenarios are clearly signposted). 

Under each case/scenario, the code computes the selection proportions under two sample sizes: smallest $n$ for which the 80% proportion of correct selections (PCS) is achieved,
and for $n-1$ for which the 80% PCS is not yet achieved.

######
The file "Simulations-Table-7.R" can be used to reproduce the operating
characteristics of the Continuous and Binary Benchmark designs under various
target probability values $\gamma=0.1,0.3,0.5,0.7,0.9$ and a non-standard Student's
distribution of the efficacy endpoint with two scenario of degrees of freedom, $df=20,10$ that are provided in Table 7.

The code should be run case-by-case under each case to obtain the results (the cases and scenarios are clearly signposted). 

Under each case/scenario, the code computes the selection proportions under two sample sizes: smallest $n$ for which the 80% proportion of correct selections (PCS) is achieved,
and for $n-1$ for which the 80% PCS is not yet achieved. 

 
