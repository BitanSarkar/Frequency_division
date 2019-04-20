function output = demodulate(channel, c,L)
temp=[];
output=[];
temp=c(1:L).*channel;
Y=fft(temp);
rect=abs(channel)<0;
rect(1:25000)=1;
output=real(ifft(Y.*rect));
