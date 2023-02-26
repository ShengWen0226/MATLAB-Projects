function [] = print2(x1,y1,x2,y2,x3,y3,x4,y4)

hold on;
subplot(2,1,1);
plot(x1(1:101),y1(1:101),'g','LineWidth',1.5);
title('Random wave');
xlabel('time');
ylabel('pressure');
subplot(2,1,2);
plot(x2(1:101),y2(1:101),'r',x3(1:101),y3(1:101),'b',x4(1:101),y4(1:101),'g','LineWidth',1.5);
axis([-inf,inf,-inf,0.6]);
legend({'Slow','Fast','Impulse'},'Location','southeast');
title('Time-weighted');
xlabel('time');
ylabel('Lp');
hold off;

end

