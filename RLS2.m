function  [output] =RLS2(input)

    global P p_hat;
    y =   input(1);
    ydF = input(2);
    uF= input(3);
  

    fi = [-ydF uF ]'; %from equation 4

    P = (P-(P*(fi)*(fi')*P)/(1+(fi')*P*fi));
    k = P*fi;
    epsilon = y-(fi')*p_hat;
    p_hat = p_hat + k * epsilon;
    output = p_hat;  % output(T and K)
end

