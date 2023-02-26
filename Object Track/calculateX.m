function [x] = calculateX(num,points)
%<計算X座標(深度)>
%輸入(點數量,座標)/輸出(x座標)
b = 676; %相機距離
f = 70*(6000/35.6); %焦距(pixel)
i = 1-(12.9+14.1)/200; %誤差值
x = [];
for n = 1:num
    x(n) = round(b*f*i/(points(2*n-1,1)-points(2*n,1)));
end

end

