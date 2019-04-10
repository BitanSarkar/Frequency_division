function [y] = bs_moving_average(x,w)
    y=[];
    l = length(x);
    for i = 1:(l-w)
        y(i)=mean(x(i:i+w));
    end
    for i = (l-w+1):l
        y(i)=mean(x(i:l));
    end
end