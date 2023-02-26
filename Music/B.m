function [y] = B(num,t)
%bass低音
fs = 3000;
s=2*pi*(0:1/fs:t);
freqs = [262,294,330,349,392,440,494];
y = cos(freqs(num)*s).*linspace(1,0,length(s));
end

