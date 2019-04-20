function output = get_output(channel,L)
    F_s = 96000;
    fc1 = 10000;
    fc2 = 20000;
    fc3 = 30000;
    fc4 = 40000;
        t = 0:1/F_s:6;
    c1 = cos(2*pi*fc1*t);
    c2 = cos(2*pi*fc2*t);
    c3 = cos(2*pi*fc3*t);
    c4 = cos(2*pi*fc4*t);
       output = [];
       
    disp("Playing message 1");
           output1 = [];
    output1=demodulate(channel,c1,L);
    sound(output1,F_s);
    pause(1);
    disp("End of message 1");
    
    disp("Playing message 2");
       output2 = [];
           output2=demodulate(channel,c2,L);
     sound(output2,F_s);
    pause(1);
    disp("End of message 2");
      
    disp("Playing message 3");
           output3 = [];
       output3=demodulate(channel,c3,L);
     sound(output3,F_s);
    pause(1);
    disp("End of message 3");
    
    disp("Playing message 4");
           output4 = [];
       output4=demodulate(channel,c4,L);
     sound(output4,F_s);
    pause(1);
    disp("End of message 4");
    
end