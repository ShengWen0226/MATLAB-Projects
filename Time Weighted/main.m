close all;
clear;
clc;
x1 = (0:0.01:38);
y1 = zeros(1,3801);
for i = 1:3801
    if x1(i)<=15*pi/16 || x1(i)>=2*pi
        y1(i) = sin(16*x1(i))/2;
    elseif x1(i)<=pi ||x1(i)>=62*pi/32
        y1(i) = sin(16*x1(i))*5/4;
    else
        y1(i) = sin(16*x1(i))*2;
    end
end
sx1 = (0:0.2:38);
sy1 = zeros(1,191);
total = 0;
for i = 0:3800
    total = total+y1(i+1)^2;
    if mod(i,20)==0
        sy1(i/20+1) = sqrt(total/(i+1));
    end
end
sy1(1) = sy1(2);
fx1 = sx1;
fy1 = sy1;
n = 1;
m = 1;
for i = 2:51
    if sy1(i)-sy1(i-1)>0.005
        fx1(i) = fx1(i)-0.2*n+0.2*n*0.125;
        n = n+1;
    elseif sy1(i-1)-sy1(i)>0.005
        fx1(i) = fx1(i)-0.2*m+0.2*m*0.125;
        m = m+1;
    end
end
for i = 52:191
    fx1(i) = fx1(i)-0.2*m+0.2*m*0.125;
    m = m+1;
end
ix1 = sx1;
iy1 = sy1;
n = 1;
m = 1;
for i = 2:51
    if sy1(i)-sy1(i-1)>0.005
        ix1(i) = ix1(i)-0.2*n+0.2*n*0.035;
        n = n+1;
    elseif sy1(i-1)-sy1(i)>0.005
        ix1(i) = ix1(i)-0.2*m+0.2*m*1.5;
        m = m+1;
    end
end
figure(1);
print1(x1,y1,sx1,sy1,fx1,fy1,ix1,iy1);

x2 = (0:0.1:10);
y2 = zeros(1,101);
sx2 = (0:0.1:10);
sy2 = zeros(1,101);
for i = 1:100
    y2(i) = -2+4*rand;
end
total = 0;
for i = 1:101
    total = total+y1(i)^2;
    sy2(i) = sqrt(total/(i));
end
sy2(1) = sy2(2);
fx2 = sx2;
fy2 = sy2;
n = 1;
m = 1;
for i = 2:51
    if sy2(i)-sy2(i-1)>0.01
        fx2(i) = fx2(i)-0.1*n+0.1*n*0.125;
        n = n+1;
    elseif sy2(i-1)-sy2(i)>0.01
        fx2(i) = fx2(i)-0.1*m+0.1*m*0.125;
        m = m+1;
    end
end
ix2 = sx2;
iy2 = sy2;
n = 1;
m = 1;
for i = 2:51
    if sy2(i)-sy2(i-1)>0.01
        ix2(i) = ix2(i)-0.1*n+0.1*n*0.035;
        n = n+1;
        m = 1;
    elseif sy2(i-1)-sy2(i)>0.01
        ix2(i) = ix2(i)-0.1*m+0.1*m*1.5;
        m = m+1;
        n = 1;
    end
end
figure(2);
print3(x2,y2,sx2,sy2,fx2,fy2);
figure(3);
print2(x2,y2,sx2,sy2,fx2,fy2,ix2,iy2);

