function output = demodulate(channel, c,L)
temp=[];
output=[];
temp=c(1:L).*channel;
Y=fft(temp);
rect=zeros(size(Y));
rect(1:440)=1;
output=real(ifft(Y.*rect));
