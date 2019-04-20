function channel = transmission(input1,input2,input3,input4)
    F_s = 96000;
    fc1 = 10000;
    fc2 = 20000;
    fc3 = 30000;
    fc4 = 40000;
    input1 = bs_moving_average(input1,50);
    input2 = bs_moving_average(input2,50);
    input3 = bs_moving_average(input3,50);
    input4 = bs_moving_average(input4,50);
    t = 0:1/F_s:6;
    c1 = cos(2*pi*fc1*t);
    c2 = cos(2*pi*fc2*t);
    c3 = cos(2*pi*fc3*t);
    c4 = cos(2*pi*fc4*t);
    L = length(input1);
    channel = c1(1:L).*input1 + c2(1:L).*input2 + c3(1:L).*input3 + c4(1:L).*input4;
end