function [point] = findPoint(img)
%<找到標記點>
%輸入照片(img)/輸出點座標(point)
bw = im2bw(img,0.99); %二值化(閾值百分比)
bw = bwareaopen(bw,200); %刪除過小圖素
p = regionprops(bw,'Centroid'); %找到中心點座標
point = round(p.Centroid); %像素座標四捨五入

end

