function [] = print(x,y1,y2,y3)

hold on;
subplot(2,1,1);
plot(x(1:1000),y1(1:1000));
title('sine wave');
xlabel('time');
ylabel('pressure');
subplot(2,1,2);
plot(x(1:1000),y2(1:1000),x(1:1000),y3(1:1000));
title('fast');
xlabel('time');
ylabel('pressure');
hold off;

end

