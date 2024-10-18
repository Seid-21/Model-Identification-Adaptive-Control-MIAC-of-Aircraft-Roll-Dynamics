clear all
clc
%initialize global variables
    Ta=0.05;      %sampling time  of adaptation loop
    Tc=0.001;     %sampling interval of conventional control
    sigma2e=0.0; %variance of stochastic noise of disturbing plant1
                  % To be changed from 0,  0.01, 0.1 to simulate noisy
                  % conditions
    TF = 1.5*Ta;  %Time constant for SVF filters
    rho=10;
    
%The identification block
    %initialization of RecursiveLeastSquare
    global P;
    global p_hat;
    P = rho*eye(2);
    p_hat = [1 ; 1];

%The control block
    %Vector of control parameters
    global w1 w2 w3;

    
    w1 = 5.0;
    w2 = 1.0;
    w3 = 1.0;
    
    %Parameters to analyze openloop in rads/sec
    Yr = 0.15;
    wr=0.25;
    