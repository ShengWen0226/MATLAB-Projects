function [y] = A(num,t)
%alto中音
fs = 3000;
s=2*pi*(0:1/fs:t);
freqs = [523,587,659,698,784,880,988];
y = cos(freqs(num)*s).*linspace(1,0,length(s));
end

