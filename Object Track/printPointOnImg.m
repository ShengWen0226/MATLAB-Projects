function [] = printPointOnImg(imgs,points,num)
%<顯示照片標記座標>
%輸入(照片,座標,點數量)/無輸出
for n = 1:num
	subplot(num,2,n*2-1),imshow(imgs{1,n}); %左相機
	hold on
	title(['< point ',num2str(n),' > left camera' newline '(',num2str(points(n*2-1,1)),',',num2str(points(n*2-1,2)),')']); %顯示座標值
	plot(points(n*2-1,1),points(n*2-1,2),'r+','LineWidth',2,'markersize',30); %標記座標
	hold off
	subplot(num,2,n*2),imshow(imgs{2,n}); %右相機
	hold on
	title(['< point ',num2str(n),' > right camera' newline '(',num2str(points(n*2,1)),',',num2str(points(n*2,2)),')']); %顯示座標值
	plot(points(n*2,1),points(n*2,2),'r+','LineWidth',2,'markersize',30); %標記座標
	hold off
end

end

