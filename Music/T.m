function [y] = T(num,t)
%treble高音
fs = 3000;
s=2*pi*(0:1/fs:t);
freqs = [1046,1175,1318,1397,1568,1760,1976];
y = cos(freqs(num)*s).*linspace(1,0,length(s));
end

