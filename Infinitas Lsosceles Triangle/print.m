function [] = print(points,n)
figure(1);
hold on;
for i = 1:3:3*n-2
    x = [points(i:i+2,1);points(i,1)];
    y = [points(i:i+2,2);points(i,2)];
    plot(x,y,'k','LineWidth',1);
    plot(x,y,'r.','markersize',20);
end
hold off;

end

