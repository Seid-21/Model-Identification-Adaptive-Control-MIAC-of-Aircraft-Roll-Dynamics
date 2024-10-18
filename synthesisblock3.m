function [output] = synthesisblock3(input)
    
    global w1;
    global w2;
    global w3;
    
    %T_Hat and k_hat using the certainity equivalence 
    %since in practice To and ko are unknown
    T_hat = input(1);
    k_hat = input(2);
    a=0.001;
    alpha = 3.0;
    
   
    %ensure K_hat does not go to 0 supervision/safety net
    if (abs(k_hat) <= a)  
        w1 = w1;
        w2 = w2;
        w3 = w3;
        output = [w1 w2 w3];
    else
        %equation 13
        w1 =(5 * T_hat-alpha)/(k_hat * alpha);
        w2 = 1/k_hat;
        w3 = T_hat / k_hat;
        output = [(5 * T_hat -alpha)/(k_hat * alpha); 1/k_hat; T_hat / k_hat];
    end
  
end