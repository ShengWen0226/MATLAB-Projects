function [] = drawPonts(num,camL,camR,x,y,z)
%<繪製三維座標圖>
%輸入(點數量,左、右相機座標,點xyz座標)/無輸出
figure(2);
plot3(camR(1),camR(2),camR(3),'bs','LineWidth',2,'markersize',10)
text(camR(1),camR(2)+100,camR(3)+10,'right camera','color','b','FontSize',15)
hold on
plot3(camL(1),camL(2),camL(3),'bs','LineWidth',2,'markersize',10)
text(camL(1),camL(2)+80,camL(3)+10,'left camera','color','b','FontSize',15)
hold on
for n = 1:num
    plot3(x(n),y(n),z(n),'ro','LineWidth',2,'markersize',10)
    text(x(n),y(n)+40,z(n)+10,['point ',num2str(n)],'color','r','FontSize',15)
end
xlabel('X')
ylabel('Y')
zlabel('Z')
grid on
hold off

end

