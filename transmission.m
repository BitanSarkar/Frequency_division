function channel = transmission(input)
    F_s = 1000000;
    fc1 = 100000;
    fc2 = 200000;
    fc3 = 300000;
    fc4 = 400000;
    input(1) = bs_moving_average(input(1),50);
    input(2) = bs_moving_average(input(2),50);
    input(3) = bs_moving_average(input(3),50);
    input(4) = bs_moving_average(input(4),50);
    t = 0:1/F_s:6;
    c1 = cos(2*pi*fc1*t);
    c2 = cos(2*pi*fc2*t);
    c3 = cos(2*pi*fc3*t);
    c4 = cos(2*pi*fc4*t);
    L = length(input(1));
    channel = c1(1:L).*input(1) + c2(1:L).*input(2) + c3(1:L).*input(3) + c4(1:L).*input(4);
end