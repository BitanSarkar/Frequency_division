function input = get_input()
    input = [];
    F_s = 96000;
    disp("Live recording started for  channel for 5secs");
    rec=audiorecorder(F_s,16,1);
    recordblocking(rec,5);
    disp("End of recording");
    input=getaudiodata(rec);
    pause(1);
    
end