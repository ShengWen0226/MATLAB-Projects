function [] = print3(x1,y1,x2,y2,x3,y3)

hold on;
subplot(2,1,1);
plot(x1(1:101),y1(1:101),'g','LineWidth',1.5);
ylabel('Lp');
yyaxis right;
plot(x2(1:101),y2(1:101),'r','LineWidth',1.5);
axis([-inf,inf,-inf,0.5]);
legend({'','Slow'},'Location','southeast');
title('Random wave Time-weighted');
xlabel('time');
subplot(2,1,2);
plot(x1(1:101),y1(1:101),'g','LineWidth',1.5);
ylabel('Lp');
yyaxis right;
plot(x3(1:101),y3(1:101),'r','LineWidth',1.5);
axis([-inf,inf,-inf,0.5]);
legend({'','Fast'},'Location','southeast');
title('Random wave Time-weighted');
xlabel('time');
hold off;

end

