function [] = print1(x1,y1,x2,y2,x3,y3,x4,y4)

hold on;
subplot(2,1,1);
plot(x1(1:1001),y1(1:1001),'g','LineWidth',1.5);
title('Sine wave');
xlabel('time');
ylabel('pressure');
subplot(2,1,2);
plot(x2(1:51),y2(1:51),'r',x3(1:191),y3(1:191),'b',x4(1:51),y4(1:51),'g','LineWidth',1.5);
axis([-inf,10,-inf,1.2]);
legend({'Slow','Fast','Impulse'},'Location','northwest');
title('Time-weighted');
xlabel('time');
ylabel('Lp');
hold off;

end

